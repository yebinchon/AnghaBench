
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nodeinfo {int id; } ;
struct ng_mesg {scalar_t__ data; } ;
typedef int ng_ID_t ;


 int NGM_GENERIC_COOKIE ;
 int NGM_NODEINFO ;
 int free (struct ng_mesg*) ;
 struct ng_mesg* ng_dialog (char const*,int ,int ,int *,int ) ;

ng_ID_t
ng_node_id(const char *path)
{
 struct ng_mesg *resp;
 ng_ID_t id;

 if ((resp = ng_dialog(path, NGM_GENERIC_COOKIE, NGM_NODEINFO,
     ((void*)0), 0)) == ((void*)0))
  return (0);
 id = ((struct nodeinfo *)(void *)resp->data)->id;
 free(resp);
 return (id);
}
