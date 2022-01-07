
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int puts (char*) ;
 int * sockfd ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
kevent_socket_fill(void)
{
  puts("filling the read buffer");
    if (write(sockfd[1], ".", 1) < 1)
        err(1, "write(2)");
}
