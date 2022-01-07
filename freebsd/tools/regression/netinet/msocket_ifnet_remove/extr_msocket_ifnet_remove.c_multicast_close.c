
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;

__attribute__((used)) static void
multicast_close(int udp_socket)
{

 close(udp_socket);
}
