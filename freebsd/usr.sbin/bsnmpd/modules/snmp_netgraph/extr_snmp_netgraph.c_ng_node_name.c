
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nodeinfo {int name; } ;
struct ng_mesg {scalar_t__ data; } ;
typedef int ng_ID_t ;


 int NGM_GENERIC_COOKIE ;
 int NGM_NODEINFO ;
 int free (struct ng_mesg*) ;
 struct ng_mesg* ng_dialog_id (int ,int ,int ,int *,int ) ;
 int strcpy (char*,int ) ;

ng_ID_t
ng_node_name(ng_ID_t id, char *name)
{
 struct ng_mesg *resp;

 if ((resp = ng_dialog_id(id, NGM_GENERIC_COOKIE, NGM_NODEINFO,
     ((void*)0), 0)) == ((void*)0))
  return (0);
 strcpy(name, ((struct nodeinfo *)(void *)resp->data)->name);
 free(resp);
 return (id);

}
