
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cmd {int c_argtype; char* c_name; int (* c_func ) (char*) ;int c_minargs; int c_maxargs; int c_msgflag; int c_msgmask; } ;
typedef int arglist ;
struct TYPE_3__ {int m_flag; } ;


 scalar_t__ CRCV ;
 scalar_t__ CSEND ;
 int F ;
 int I ;
 int LINESIZE ;
 int M ;
 int MAXARGC ;
 int MDELETED ;



 int P ;
 int R ;


 int T ;
 int W ;
 scalar_t__ cond ;
 TYPE_1__* dot ;
 int errx (int,char*) ;
 char first (int ,int ) ;
 int getmsglist (char*,char*,int ) ;
 int getrawlist (char*,char**,int) ;
 scalar_t__ isspace (unsigned char) ;
 struct cmd* lex (char*) ;
 scalar_t__ loading ;
 TYPE_1__* message ;
 char* msgvec ;
 int printf (char*,...) ;
 scalar_t__ rcvmode ;
 scalar_t__ readonly ;
 int sawcom ;
 int shell (char*) ;
 scalar_t__ sourcing ;
 int * strchr (char*,char) ;
 int stub1 (char*) ;
 int stub2 (char*) ;
 int stub3 (char*) ;
 int stub4 (char**) ;
 int stub5 (char**) ;
 int type (int*) ;
 int unstack () ;
 int * value (char*) ;

int
execute(char linebuf[], int contxt)
{
 char word[LINESIZE];
 char *arglist[MAXARGC];
 const struct cmd *com;
 char *cp, *cp2;
 int c, muvec[2];
 int e = 1;
 for (cp = linebuf; isspace((unsigned char)*cp); cp++)
  ;
 if (*cp == '!') {
  if (sourcing) {
   printf("Can't \"!\" while sourcing\n");
   goto out;
  }
  shell(cp+1);
  return (0);
 }
 cp2 = word;
 while (*cp != '\0' && strchr(" \t0123456789$^.:/-+*'\"", *cp) == ((void*)0))
  *cp2++ = *cp++;
 *cp2 = '\0';
 if (sourcing && *word == '\0')
  return (0);
 com = lex(word);
 if (com == ((void*)0)) {
  printf("Unknown command: \"%s\"\n", word);
  goto out;
 }






 if ((com->c_argtype & F) == 0)
  if ((cond == CRCV && !rcvmode) || (cond == CSEND && rcvmode))
   return (0);
 if (!rcvmode && (com->c_argtype & M) == 0) {
  printf("May not execute \"%s\" while sending\n",
      com->c_name);
  goto out;
 }
 if (sourcing && com->c_argtype & I) {
  printf("May not execute \"%s\" while sourcing\n",
      com->c_name);
  goto out;
 }
 if (readonly && com->c_argtype & W) {
  printf("May not execute \"%s\" -- message file is read only\n",
     com->c_name);
  goto out;
 }
 if (contxt && com->c_argtype & R) {
  printf("Cannot recursively invoke \"%s\"\n", com->c_name);
  goto out;
 }
 switch (com->c_argtype & ~(F|P|I|M|T|W|R)) {
 case 132:




  if (msgvec == 0) {
   printf("Illegal use of \"message list\"\n");
   break;
  }
  if ((c = getmsglist(cp, msgvec, com->c_msgflag)) < 0)
   break;
  if (c == 0) {
   *msgvec = first(com->c_msgflag, com->c_msgmask);
   msgvec[1] = 0;
  }
  if (*msgvec == 0) {
   printf("No applicable messages\n");
   break;
  }
  e = (*com->c_func)(msgvec);
  break;

 case 131:




  if (msgvec == 0) {
   printf("Illegal use of \"message list\"\n");
   break;
  }
  if (getmsglist(cp, msgvec, com->c_msgflag) < 0)
   break;
  e = (*com->c_func)(msgvec);
  break;

 case 128:




  while (isspace((unsigned char)*cp))
   cp++;
  e = (*com->c_func)(cp);
  break;

 case 129:



  if ((c = getrawlist(cp, arglist,
      sizeof(arglist) / sizeof(*arglist))) < 0)
   break;
  if (c < com->c_minargs) {
   printf("%s requires at least %d arg(s)\n",
       com->c_name, com->c_minargs);
   break;
  }
  if (c > com->c_maxargs) {
   printf("%s takes no more than %d arg(s)\n",
       com->c_name, com->c_maxargs);
   break;
  }
  e = (*com->c_func)(arglist);
  break;

 case 130:




  e = (*com->c_func)(0);
  break;

 default:
  errx(1, "Unknown argtype");
 }

out:




 if (e) {
  if (e < 0)
   return (1);
  if (loading)
   return (1);
  if (sourcing)
   unstack();
  return (0);
 }
 if (com == ((void*)0))
  return (0);
 if (value("autoprint") != ((void*)0) && com->c_argtype & P)
  if ((dot->m_flag & MDELETED) == 0) {
   muvec[0] = dot - &message[0] + 1;
   muvec[1] = 0;
   type(muvec);
  }
 if (!sourcing && (com->c_argtype & T) == 0)
  sawcom = 1;
 return (0);
}
