
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_UNIX ;
 int SOCK_STREAM ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ forcegc ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
trigger_gc(void)
{
 int s;

 if (forcegc) {
  if ((s = socket(PF_UNIX, SOCK_STREAM, 0)) < 0)
   err(-1, "trigger_gc: socket");
  close(s);
 }
 sleep(1);
}
