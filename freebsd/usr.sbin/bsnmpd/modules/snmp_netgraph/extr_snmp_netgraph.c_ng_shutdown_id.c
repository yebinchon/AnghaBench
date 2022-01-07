
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ng_ID_t ;


 int NGM_GENERIC_COOKIE ;
 int NGM_SHUTDOWN ;
 int NG_PATHSIZ ;
 int NgSendMsg (int ,char*,int ,int ,int *,int ) ;
 int csock ;
 int snprintf (char*,int,char*,int) ;

int
ng_shutdown_id(ng_ID_t id)
{
 char path[NG_PATHSIZ];

 snprintf(path, NG_PATHSIZ, "[%x]:", id);
 return (NgSendMsg(csock, path, NGM_GENERIC_COOKIE,
     NGM_SHUTDOWN, ((void*)0), 0));
}
