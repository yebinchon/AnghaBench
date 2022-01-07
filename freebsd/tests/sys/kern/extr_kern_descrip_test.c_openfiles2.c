
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFILE ;
 int O_RDONLY ;
 int RENDEZVOUS ;
 int R_OK ;
 int SIGUSR1 ;
 int _exit (int) ;
 scalar_t__ access (int ,int ) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 int getppid () ;
 int kill (int ,int ) ;
 int open (int ,int ) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int usleep (int) ;

__attribute__((used)) static void
openfiles2(size_t n)
{
 size_t i;
 int r;

 errno = 0;
 for (i = 0; i < n; i++) {
  r = open(AFILE, O_RDONLY);
  if (r < 0) {
   fprintf(stderr, "open: %s\n", strerror(errno));
   _exit(1);
  }
 }
 kill(getppid(), SIGUSR1);

 for (;;) {
  if (access(RENDEZVOUS, R_OK) != 0)
   break;
  usleep(1000);
 }
 _exit(0);
}
