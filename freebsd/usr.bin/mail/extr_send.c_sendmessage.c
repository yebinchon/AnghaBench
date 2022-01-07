
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {long m_size; } ;
struct ignoretab {int dummy; } ;
typedef int line ;
typedef int FILE ;


 int EOF ;
 int LINESIZE ;
 scalar_t__ ferror (int *) ;
 int * fgets (char*,int,int *) ;
 int fputs (char*,int *) ;
 int fread (char*,int,int,int *) ;
 int fwrite (char*,int,int,int *) ;
 int getc (int *) ;
 struct ignoretab* ignoreall ;
 scalar_t__ isign (char*,struct ignoretab*) ;
 scalar_t__ isspace (unsigned char) ;
 int putc (int,int *) ;
 int * setinput (struct message*) ;
 int statusput (struct message*,int *,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strlen (char*) ;

int
sendmessage(struct message *mp, FILE *obuf, struct ignoretab *doign,
 char *prefix)
{
 long count;
 FILE *ibuf;
 char *cp, *cp2, line[LINESIZE];
 int ishead, infld, ignoring, dostat, firstline;
 int c = 0, length, prefixlen;




 if (prefix != ((void*)0)) {
  cp2 = 0;
  for (cp = prefix; *cp != '\0'; cp++)
   if (*cp != ' ' && *cp != '\t')
    cp2 = cp;
  prefixlen = cp2 == ((void*)0) ? 0 : cp2 - prefix + 1;
 }
 ibuf = setinput(mp);
 count = mp->m_size;
 ishead = 1;
 dostat = doign == 0 || !isign("status", doign);
 infld = 0;
 firstline = 1;



 while (count > 0 && ishead) {
  if (fgets(line, sizeof(line), ibuf) == ((void*)0))
   break;
  count -= length = strlen(line);
  if (firstline) {




   firstline = 0;
   ignoring = doign == ignoreall;
  } else if (line[0] == '\n') {






   if (dostat) {
    statusput(mp, obuf, prefix);
    dostat = 0;
   }
   ishead = 0;
   ignoring = doign == ignoreall;
  } else if (infld && (line[0] == ' ' || line[0] == '\t')) {






  } else {



   for (cp = line; (c = *cp++) != '\0' && c != ':' &&
       !isspace((unsigned char)c);)
    ;
   cp2 = --cp;
   while (isspace((unsigned char)*cp++))
    ;
   if (cp[-1] != ':') {





    if (dostat) {
     statusput(mp, obuf, prefix);
     dostat = 0;
    }
    if (doign != ignoreall)

     (void)putc('\n', obuf);
    ishead = 0;
    ignoring = 0;
   } else {




    *cp2 = '\0';
    if (doign && isign(line, doign))
     ignoring = 1;
    else if ((line[0] == 's' || line[0] == 'S') &&
      strcasecmp(line, "status") == 0) {




     if (dostat) {
      statusput(mp, obuf, prefix);
      dostat = 0;
     }
     ignoring = 1;
    } else {
     ignoring = 0;
     *cp2 = c;
    }
    infld = 1;
   }
  }
  if (!ignoring) {




   if (prefix != ((void*)0)) {
    if (length > 1)
     fputs(prefix, obuf);
    else
     (void)fwrite(prefix, sizeof(*prefix),
         prefixlen, obuf);
   }
   (void)fwrite(line, sizeof(*line), length, obuf);
   if (ferror(obuf))
    return (-1);
  }
 }



 if (doign == ignoreall)
  count--;
 if (prefix != ((void*)0))
  while (count > 0) {
   if (fgets(line, sizeof(line), ibuf) == ((void*)0)) {
    c = 0;
    break;
   }
   count -= c = strlen(line);




   if (c > 1)
    fputs(prefix, obuf);
   else
    (void)fwrite(prefix, sizeof(*prefix),
        prefixlen, obuf);
   (void)fwrite(line, sizeof(*line), c, obuf);
   if (ferror(obuf))
    return (-1);
  }
 else
  while (count > 0) {
   c = count < LINESIZE ? count : LINESIZE;
   if ((c = fread(line, sizeof(*line), c, ibuf)) <= 0)
    break;
   count -= c;
   if (fwrite(line, sizeof(*line), c, obuf) != c)
    return (-1);
  }
 if (doign == ignoreall && c > 0 && line[c - 1] != '\n')

  if ((c = getc(ibuf)) != EOF && putc(c, obuf) == EOF)
   return (-1);
 return (0);
}
