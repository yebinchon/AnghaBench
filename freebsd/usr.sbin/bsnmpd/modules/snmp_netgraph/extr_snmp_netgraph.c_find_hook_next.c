
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct nodeinfo {size_t hooks; } ;
struct ng_mesg {scalar_t__ data; } ;
struct namelist {size_t numnames; struct linkinfo* nodeinfo; } ;
struct linkinfo {scalar_t__ id; size_t* ourhook; } ;
struct hooklist {struct linkinfo* link; struct nodeinfo nodeinfo; } ;
struct asn_oid {size_t len; scalar_t__* subs; } ;


 int NGM_GENERIC_COOKIE ;
 int NGM_LISTHOOKS ;
 int NGM_LISTNODES ;
 int free (struct ng_mesg*) ;
 int hook_cmp ;
 scalar_t__ index_compare (struct asn_oid const*,size_t,struct asn_oid*) ;
 int ncmp ;
 struct ng_mesg* ng_dialog_id (scalar_t__,int ,int ,int *,int ) ;
 int qsort (struct linkinfo*,size_t,int,int ) ;
 scalar_t__ snmp_node ;
 size_t strlen (size_t*) ;

__attribute__((used)) static int
find_hook_next(const struct asn_oid *oid, u_int sub, struct nodeinfo *nodeinfo,
    struct linkinfo *linkinfo)
{
 u_int idxlen = oid->len - sub;
 struct namelist *list;
 struct ng_mesg *resp;
 struct hooklist *hooks;
 struct ng_mesg *resp1;
 u_int node_index;
 struct asn_oid idx;
 u_int i, j;




 if ((resp = ng_dialog_id(snmp_node, NGM_GENERIC_COOKIE, NGM_LISTNODES,
     ((void*)0), 0)) == ((void*)0))
  return (-1);
 list = (struct namelist *)(void *)resp->data;

 qsort(list->nodeinfo, list->numnames, sizeof(list->nodeinfo[0]), ncmp);





 if (idxlen == 0) {
  node_index = 0;
  goto return_first_hook;
 }




 for (node_index = 0; node_index < list->numnames; node_index++)
  if (list->nodeinfo[node_index].id >= oid->subs[sub])
   break;





 if (idxlen == 1 || node_index >= list->numnames ||
     list->nodeinfo[node_index].id > oid->subs[sub])
  goto return_first_hook;






 if ((resp1 = ng_dialog_id(list->nodeinfo[node_index].id,
     NGM_GENERIC_COOKIE, NGM_LISTHOOKS, ((void*)0), 0)) == ((void*)0)) {
  free(resp);
  return (-1);
 }
 hooks = (struct hooklist *)(void *)resp1->data;
 if (hooks->nodeinfo.hooks > 0) {
  qsort(hooks->link, hooks->nodeinfo.hooks,
      sizeof(hooks->link[0]), hook_cmp);
  for (i = 0; i < hooks->nodeinfo.hooks; i++) {
   idx.len = strlen(hooks->link[i].ourhook) + 1;
   idx.subs[0] = idx.len - 1;
   for (j = 0; j < idx.len; j++)
    idx.subs[j + 1] = hooks->link[i].ourhook[j];
   if (index_compare(oid, sub + 1, &idx) < 0)
    break;
  }
  if (i < hooks->nodeinfo.hooks) {
   *nodeinfo = hooks->nodeinfo;
   *linkinfo = hooks->link[i];

   free(resp);
   free(resp1);
   return (0);
  }
 }



 free(resp1);
 node_index++;

  return_first_hook:
 while (node_index < list->numnames) {
  if ((resp1 = ng_dialog_id(list->nodeinfo[node_index].id,
      NGM_GENERIC_COOKIE, NGM_LISTHOOKS, ((void*)0), 0)) == ((void*)0))
   break;
  hooks = (struct hooklist *)(void *)resp1->data;
  if (hooks->nodeinfo.hooks > 0) {
   qsort(hooks->link, hooks->nodeinfo.hooks,
       sizeof(hooks->link[0]), hook_cmp);

   *nodeinfo = hooks->nodeinfo;
   *linkinfo = hooks->link[0];

   free(resp);
   free(resp1);
   return (0);
  }


  free(resp1);
  node_index++;
 }

 free(resp);
 return (-1);
}
