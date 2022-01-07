
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct typelist {size_t numtypes; TYPE_1__* typeinfo; } ;
struct TYPE_4__ {size_t* subs; size_t len; } ;
struct ngtype {size_t* name; TYPE_2__ index; scalar_t__ data; } ;
struct ng_mesg {size_t* name; TYPE_2__ index; scalar_t__ data; } ;
struct TYPE_3__ {int type_name; } ;


 int INSERT_OBJECT_OID (struct ngtype*,int *) ;
 int NGM_GENERIC_COOKIE ;
 int NGM_LISTTYPES ;
 int SNMP_ERR_GENERR ;
 struct ngtype* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct ngtype*,int ) ;
 int free (struct ngtype*) ;
 int link ;
 struct ngtype* malloc (int) ;
 struct ngtype* ng_dialog_id (int ,int ,int ,int *,int ) ;
 int ngtype_list ;
 scalar_t__ ngtype_tick ;
 int snmp_node ;
 int strcpy (size_t*,int ) ;
 size_t strlen (size_t*) ;
 scalar_t__ this_tick ;

__attribute__((used)) static int
fetch_types(void)
{
 struct ngtype *t;
 struct typelist *typelist;
 struct ng_mesg *resp;
 u_int u, i;

 if (this_tick <= ngtype_tick)
  return (0);

 while ((t = TAILQ_FIRST(&ngtype_list)) != ((void*)0)) {
  TAILQ_REMOVE(&ngtype_list, t, link);
  free(t);
 }

 if ((resp = ng_dialog_id(snmp_node, NGM_GENERIC_COOKIE,
     NGM_LISTTYPES, ((void*)0), 0)) == ((void*)0))
  return (SNMP_ERR_GENERR);
 typelist = (struct typelist *)(void *)resp->data;

 for (u = 0; u < typelist->numtypes; u++) {
  if ((t = malloc(sizeof(*t))) == ((void*)0)) {
   free(resp);
   return (SNMP_ERR_GENERR);
  }
  strcpy(t->name, typelist->typeinfo[u].type_name);
  t->index.subs[0] = strlen(t->name);
  t->index.len = t->index.subs[0] + 1;
  for (i = 0; i < t->index.subs[0]; i++)
   t->index.subs[i + 1] = t->name[i];

  INSERT_OBJECT_OID(t, &ngtype_list);
 }

 ngtype_tick = this_tick;

 free(resp);
 return (0);
}
