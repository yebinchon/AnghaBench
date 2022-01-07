
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int puts (char*) ;
 int read (int ,char*,int) ;
 int * sockfd ;

__attribute__((used)) static void
kevent_socket_drain(void)
{
    char buf[1];


    puts("draining the read buffer");
    if (read(sockfd[0], &buf[0], 1) < 1)
        err(1, "read(2)");
}
