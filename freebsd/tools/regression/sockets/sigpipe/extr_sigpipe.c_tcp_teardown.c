
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int listen_sock ;

__attribute__((used)) static void
tcp_teardown(void)
{

 close(listen_sock);
}
