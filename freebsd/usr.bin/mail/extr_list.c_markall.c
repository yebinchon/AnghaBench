
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_flag; } ;
struct coltab {char co_char; int co_bit; int co_mask; int co_equal; } ;


 int MDELETED ;
 int MMARK ;
 int NMLSIZE ;



 int TEOL ;






 int check (int,int) ;
 struct coltab* coltab ;
 struct message* dot ;
 int evalcol (char) ;
 int lastcolmod ;
 int lexnumber ;
 char* lexstring ;
 int mark (int) ;
 scalar_t__ matchfield (char*,int) ;
 scalar_t__ matchsender (char*,int) ;
 struct message* message ;
 int metamess (char,int) ;
 int msgCount ;
 int printf (char*,...) ;
 int regret (int) ;
 int savestr (char*) ;
 int scan (char**) ;
 int scaninit () ;
 int unmark (int) ;

int
markall(char buf[], int f)
{
 char **np;
 int i;
 struct message *mp;
 char *namelist[NMLSIZE], *bufp;
 int tok, beg, mc, star, other, valdot, colmod, colresult;

 valdot = dot - &message[0] + 1;
 colmod = 0;
 for (i = 1; i <= msgCount; i++)
  unmark(i);
 bufp = buf;
 mc = 0;
 np = &namelist[0];
 scaninit();
 tok = scan(&bufp);
 star = 0;
 other = 0;
 beg = 0;
 while (tok != TEOL) {
  switch (tok) {
  case 132:
number:
   if (star) {
    printf("No numbers mixed with *\n");
    return (-1);
   }
   mc++;
   other++;
   if (beg != 0) {
    if (check(lexnumber, f))
     return (-1);
    for (i = beg; i <= lexnumber; i++)
     if (f == MDELETED || (message[i - 1].m_flag & MDELETED) == 0)
      mark(i);
    beg = 0;
    break;
   }
   beg = lexnumber;
   if (check(beg, f))
    return (-1);
   tok = scan(&bufp);
   regret(tok);
   if (tok != 136) {
    mark(beg);
    beg = 0;
   }
   break;

  case 131:
   if (beg != 0) {
    printf("Non-numeric second argument\n");
    return (-1);
   }
   i = valdot;
   do {
    i++;
    if (i > msgCount) {
     printf("Referencing beyond EOF\n");
     return (-1);
    }
   } while ((message[i - 1].m_flag & MDELETED) != f);
   mark(i);
   break;

  case 136:
   if (beg == 0) {
    i = valdot;
    do {
     i--;
     if (i <= 0) {
      printf("Referencing before 1\n");
      return (-1);
     }
    } while ((message[i - 1].m_flag & MDELETED) != f);
    mark(i);
   }
   break;

  case 129:
   if (beg != 0) {
    printf("Non-numeric second argument\n");
    return (-1);
   }
   other++;
   if (lexstring[0] == ':') {
    colresult = evalcol(lexstring[1]);
    if (colresult == 0) {
     printf("Unknown colon modifier \"%s\"\n",
         lexstring);
     return (-1);
    }
    colmod |= colresult;
   }
   else
    *np++ = savestr(lexstring);
   break;

  case 135:
  case 128:
  case 134:
   lexnumber = metamess(lexstring[0], f);
   if (lexnumber == -1)
    return (-1);
   goto number;

  case 130:
   if (other) {
    printf("Can't mix \"*\" with anything\n");
    return (-1);
   }
   star++;
   break;

  case 133:
   return (-1);
  }
  tok = scan(&bufp);
 }
 lastcolmod = colmod;
 *np = ((void*)0);
 mc = 0;
 if (star) {
  for (i = 0; i < msgCount; i++)
   if ((message[i].m_flag & MDELETED) == f) {
    mark(i+1);
    mc++;
   }
  if (mc == 0) {
   printf("No applicable messages.\n");
   return (-1);
  }
  return (0);
 }







 if ((np > namelist || colmod != 0) && mc == 0)
  for (i = 1; i <= msgCount; i++)
   if ((message[i-1].m_flag & MDELETED) == f)
    mark(i);






 if (np > namelist) {
  for (i = 1; i <= msgCount; i++) {
   for (mc = 0, np = &namelist[0]; *np != ((void*)0); np++)
    if (**np == '/') {
     if (matchfield(*np, i)) {
      mc++;
      break;
     }
    }
    else {
     if (matchsender(*np, i)) {
      mc++;
      break;
     }
    }
   if (mc == 0)
    unmark(i);
  }





  mc = 0;
  for (i = 1; i <= msgCount; i++)
   if (message[i-1].m_flag & MMARK) {
    mc++;
    break;
   }
  if (mc == 0) {
   printf("No applicable messages from {%s",
    namelist[0]);
   for (np = &namelist[1]; *np != ((void*)0); np++)
    printf(", %s", *np);
   printf("}\n");
   return (-1);
  }
 }






 if (colmod != 0) {
  for (i = 1; i <= msgCount; i++) {
   struct coltab *colp;

   mp = &message[i - 1];
   for (colp = &coltab[0]; colp->co_char != '\0'; colp++)
    if (colp->co_bit & colmod)
     if ((mp->m_flag & colp->co_mask)
         != colp->co_equal)
      unmark(i);

  }
  for (mp = &message[0]; mp < &message[msgCount]; mp++)
   if (mp->m_flag & MMARK)
    break;
  if (mp >= &message[msgCount]) {
   struct coltab *colp;

   printf("No messages satisfy");
   for (colp = &coltab[0]; colp->co_char != '\0'; colp++)
    if (colp->co_bit & colmod)
     printf(" :%c", colp->co_char);
   printf("\n");
   return (-1);
  }
 }
 return (0);
}
