
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _exit (int) ;
 scalar_t__ accept_socket ;
 int close (scalar_t__) ;
 scalar_t__ listen_socket ;
 int printf (char*) ;

__attribute__((used)) static void
signal_alarm(int signum)
{
 (void)signum;

 printf("# test timeout\n");

 if (accept_socket > 0)
  close(accept_socket);
 if (listen_socket > 0)
  close(listen_socket);

 _exit(-1);
}
