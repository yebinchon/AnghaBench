
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct nodeinfo {int dummy; } ;
struct ng_mesg {scalar_t__ data; } ;
struct asn_oid {int * subs; } ;
typedef int ng_ID_t ;


 int NGM_GENERIC_COOKIE ;
 int NGM_NODEINFO ;
 int free (struct ng_mesg*) ;
 struct ng_mesg* ng_dialog_id (int ,int ,int ,int *,int ) ;

__attribute__((used)) static int
find_node(const struct asn_oid *oid, u_int sub, struct nodeinfo *info)
{
 ng_ID_t id = oid->subs[sub];
 struct ng_mesg *resp;

 if ((resp = ng_dialog_id(id, NGM_GENERIC_COOKIE, NGM_NODEINFO,
     ((void*)0), 0)) == ((void*)0))
  return (-1);

 *info = *(struct nodeinfo *)(void *)resp->data;
 free(resp);
 return (0);
}
