
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;


 int EVENTHANDLER_PRI_FIRST ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int UMA_ALIGN_PTR ;
 int UMA_ZONE_NOFREE ;
 int maxsockets ;
 int maxsockets_change ;
 int socket_zone ;
 int socket_zone_change ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int uma_zone_set_max (int ,int ) ;
 int uma_zone_set_warning (int ,char*) ;

__attribute__((used)) static void
socket_init(void *tag)
{

 socket_zone = uma_zcreate("socket", sizeof(struct socket), ((void*)0), ((void*)0),
     ((void*)0), ((void*)0), UMA_ALIGN_PTR, UMA_ZONE_NOFREE);
 maxsockets = uma_zone_set_max(socket_zone, maxsockets);
 uma_zone_set_warning(socket_zone, "kern.ipc.maxsockets limit reached");
 EVENTHANDLER_REGISTER(maxsockets_change, socket_zone_change, ((void*)0),
     EVENTHANDLER_PRI_FIRST);
}
