
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
typedef int ng_ID_t ;
struct TYPE_5__ {int type; int id; } ;
struct TYPE_6__ {TYPE_2__ nodeinfo; int peerhook; int ourhook; } ;


 int LOG_ERR ;
 int NGM_GENERIC_COOKIE ;
 int NGM_LISTHOOKS ;
 int exit (int) ;
 int free (struct ng_mesg*) ;
 struct ng_mesg* ng_dialog_id (int ,int ,int ,int *,int ) ;
 int ng_next_node_id (int ,char const*,char*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int syslog (int ,char*) ;

__attribute__((used)) static ng_ID_t
ng_next_node_id_internal(ng_ID_t node, const char *type, const char *hook,
    int skip_tee)
{
 struct ng_mesg *resp;
 struct hooklist *hooklist;
 u_int i;

 if ((resp = ng_dialog_id(node, NGM_GENERIC_COOKIE, NGM_LISTHOOKS,
     ((void*)0), 0)) == ((void*)0)) {
  syslog(LOG_ERR, "get hook list: %m");
  exit(1);
 }
 hooklist = (struct hooklist *)(void *)resp->data;

 for (i = 0; i < hooklist->nodeinfo.hooks; i++)
  if (strcmp(hooklist->link[i].ourhook, hook) == 0)
   break;

 if (i == hooklist->nodeinfo.hooks) {
  free(resp);
  return (0);
 }

 node = hooklist->link[i].nodeinfo.id;

 if (skip_tee && strcmp(hooklist->link[i].nodeinfo.type, "tee") == 0) {
  if (strcmp(hooklist->link[i].peerhook, "left") == 0)
   node = ng_next_node_id(node, type, "right");
  else if (strcmp(hooklist->link[i].peerhook, "right") == 0)
   node = ng_next_node_id(node, type, "left");
  else if (type != ((void*)0) &&
      strcmp(hooklist->link[i].nodeinfo.type, type) != 0)
   node = 0;

 } else if (type != ((void*)0) &&
     strcmp(hooklist->link[i].nodeinfo.type, type) != 0)
  node = 0;

 free(resp);

 return (node);
}
