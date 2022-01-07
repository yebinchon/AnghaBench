
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int ;
struct ng_mesg {scalar_t__ data; } ;
struct TYPE_4__ {size_t hooks; } ;
struct hooklist {TYPE_3__* link; TYPE_1__ nodeinfo; } ;
typedef scalar_t__ ng_ID_t ;
struct TYPE_5__ {scalar_t__ id; int type; } ;
struct TYPE_6__ {TYPE_2__ nodeinfo; int peerhook; int ourhook; } ;


 int NGM_GENERIC_COOKIE ;
 int NGM_LISTHOOKS ;
 int free (struct ng_mesg*) ;
 struct ng_mesg* ng_dialog_id (scalar_t__,int ,int ,int *,int ) ;
 int ng_rmhook_id (scalar_t__,char const*) ;
 int ng_shutdown_id (scalar_t__) ;
 scalar_t__ strcmp (int ,char const*) ;

int
ng_rmhook_tee_id(ng_ID_t node, const char *hook)
{
 struct ng_mesg *resp;
 struct hooklist *hooklist;
 u_int i;
 int first = 1;
 ng_ID_t next_node;
 const char *next_hook;

  again:


 if ((resp = ng_dialog_id(node, NGM_GENERIC_COOKIE, NGM_LISTHOOKS,
     ((void*)0), 0)) == ((void*)0))
  return (0);

 hooklist = (struct hooklist *)(void *)resp->data;

 for (i = 0; i < hooklist->nodeinfo.hooks; i++)
  if (strcmp(hooklist->link[i].ourhook, hook) == 0)
   break;

 if (i == hooklist->nodeinfo.hooks) {
  free(resp);
  return (0);
 }

 next_node = 0;
 next_hook = ((void*)0);
 if (strcmp(hooklist->link[i].nodeinfo.type, "tee") == 0) {
  if (strcmp(hooklist->link[i].peerhook, "left") == 0) {
   next_node = hooklist->link[i].nodeinfo.id;
   next_hook = "right";
  } else if (strcmp(hooklist->link[i].peerhook, "right") == 0) {
   next_node = hooklist->link[i].nodeinfo.id;
   next_hook = "left";
  }
 }
 free(resp);

 if (first) {
  ng_rmhook_id(node, hook);
  first = 0;
 } else {
  ng_shutdown_id(node);
 }
 if ((node = next_node) == 0)
  return (0);
 hook = next_hook;

 goto again;
}
