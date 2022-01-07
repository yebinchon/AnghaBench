
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int FALSE ;
 int SCRIPT ;
 int TRUE ;
 scalar_t__ boolean (int ) ;
 int fclose (int *) ;
 int * fildes ;
 int * fopen (char*,char*) ;
 int * fscript ;
 int longjmp (int ,int) ;
 int read (int ,char*,int) ;
 int * repdes ;
 int setboolean (int ,int ) ;
 int sigbuf ;
 int value (int ) ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
intEMT(int signo)
{
 char c, line[256];
 char *pline = line;
 char reply;

 read(fildes[0], &c, 1);
 while (c != '\n' && (size_t)(pline - line) < sizeof(line)) {
  *pline++ = c;
  read(fildes[0], &c, 1);
 }
 *pline = '\0';
 if (boolean(value(SCRIPT)) && fscript != ((void*)0))
  fclose(fscript);
 if (pline == line) {
  setboolean(value(SCRIPT), FALSE);
  reply = 'y';
 } else {
  if ((fscript = fopen(line, "a")) == ((void*)0))
   reply = 'n';
  else {
   reply = 'y';
   setboolean(value(SCRIPT), TRUE);
  }
 }
 write(repdes[1], &reply, 1);
 longjmp(sigbuf, 1);
}
