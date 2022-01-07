
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int ;
typedef int u_char ;
struct ng_mesg {scalar_t__ data; } ;
struct linkinfo {int ourhook; } ;
struct TYPE_2__ {size_t hooks; } ;
struct hooklist {struct linkinfo* link; TYPE_1__ nodeinfo; } ;
typedef int int32_t ;


 int NGM_GENERIC_COOKIE ;
 int NGM_LISTHOOKS ;
 int free (struct ng_mesg*) ;
 struct ng_mesg* ng_dialog_id (int ,int ,int ,int *,int ) ;
 size_t strlen (int ) ;
 scalar_t__ strncmp (int ,int const*,size_t) ;

__attribute__((used)) static int
find_hook(int32_t id, const u_char *hook, size_t hooklen, struct linkinfo *info)
{
 struct ng_mesg *resp;
 struct hooklist *list;
 u_int i;

 if ((resp = ng_dialog_id(id, NGM_GENERIC_COOKIE,
     NGM_LISTHOOKS, ((void*)0), 0)) == ((void*)0))
  return (-1);

 list = (struct hooklist *)(void *)resp->data;

 for (i = 0; i < list->nodeinfo.hooks; i++) {
  if (strlen(list->link[i].ourhook) == hooklen &&
      strncmp(list->link[i].ourhook, hook, hooklen) == 0) {
   *info = list->link[i];
   free(resp);
   return (0);
  }
 }
 free(resp);
 return (-1);
}
