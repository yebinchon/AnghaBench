
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maxsockets ;
 int socket_zone ;
 int uma_zone_set_max (int ,int ) ;

__attribute__((used)) static void
socket_zone_change(void *tag)
{

 maxsockets = uma_zone_set_max(socket_zone, maxsockets);
}
