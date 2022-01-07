
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngm_rmhook {int ourhook; } ;
typedef int rmhook ;


 int NGM_GENERIC_COOKIE ;
 int NGM_RMHOOK ;
 int NG_HOOKSIZ ;
 int NgSendMsg (int ,char*,int ,int ,struct ngm_rmhook*,int) ;
 int csock ;
 int strlcpy (int ,char const*,int ) ;

int
ng_rmhook(const char *ourhook)
{
 struct ngm_rmhook rmhook;

 strlcpy(rmhook.ourhook, ourhook, NG_HOOKSIZ);
 return (NgSendMsg(csock, ".:",
     NGM_GENERIC_COOKIE, NGM_RMHOOK, &rmhook, sizeof(rmhook)));
}
