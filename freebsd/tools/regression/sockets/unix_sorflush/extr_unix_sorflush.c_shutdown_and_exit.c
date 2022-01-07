
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHUT_RD ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ shutdown (int,int ) ;

__attribute__((used)) static void
shutdown_and_exit(int s)
{

 if (shutdown(s, SHUT_RD) < 0)
  err(-1, "shutdown_and_exit: shutdown");
 exit(0);
}
