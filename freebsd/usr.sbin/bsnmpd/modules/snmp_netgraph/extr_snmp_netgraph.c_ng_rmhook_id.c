
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngm_rmhook {int ourhook; } ;
typedef int rmhook ;
typedef int ng_ID_t ;


 int NGM_GENERIC_COOKIE ;
 int NGM_RMHOOK ;
 int NG_HOOKSIZ ;
 int NG_PATHSIZ ;
 int NgSendMsg (int ,char*,int ,int ,struct ngm_rmhook*,int) ;
 int csock ;
 int snprintf (char*,int,char*,int) ;
 int strlcpy (int ,char const*,int ) ;

int
ng_rmhook_id(ng_ID_t id, const char *hook)
{
 struct ngm_rmhook rmhook;
 char path[NG_PATHSIZ];

 strlcpy(rmhook.ourhook, hook, NG_HOOKSIZ);
 snprintf(path, NG_PATHSIZ, "[%x]:", id);
 return (NgSendMsg(csock, path,
     NGM_GENERIC_COOKIE, NGM_RMHOOK, &rmhook, sizeof(rmhook)));
}
