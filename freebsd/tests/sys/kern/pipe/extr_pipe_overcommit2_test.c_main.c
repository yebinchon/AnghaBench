
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EMFILE ;
 scalar_t__ ENFILE ;
 int O_RDONLY ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int exit (int ) ;
 int mkstemp (char*) ;
 unsigned int nitems (int*) ;
 int open (char*,int ) ;
 int pipe (int*) ;
 int printf (char*) ;
 int unlink (char*) ;

int
main(void)
{
 char template[] = "pipe.XXXXXXXXXX";
 int lastfd, pipes[10000], returnval;
 unsigned int i;

 lastfd = -1;

 if (mkstemp(template) == -1)
  err(1, "mkstemp failed");

 for (i = 0; i < nitems(pipes); i++) {
  returnval = open(template, O_RDONLY);
  if (returnval == -1 && (errno == ENFILE || errno == EMFILE))
   break;
  else
   lastfd = returnval;
 }


 for (i = 0; i < 1000; i++) {
  returnval = pipe(&pipes[i]);
 }





 close(lastfd);

 for (i = 0; i < 1000; i++) {
  returnval = pipe(&pipes[i]);
 }
 printf("PASS\n");

 unlink(template);

 exit(0);
}
