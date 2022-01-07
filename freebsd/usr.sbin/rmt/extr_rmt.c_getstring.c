
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSIZE ;
 int STDIN_FILENO ;
 int exit (int ) ;
 int read (int ,char*,int) ;

void
getstring(char *bp)
{
 int i;
 char *cp = bp;

 for (i = 0; i < SSIZE; i++) {
  if (read(STDIN_FILENO, cp+i, 1) != 1)
   exit(0);
  if (cp[i] == '\n')
   break;
 }
 cp[i] = '\0';
}
