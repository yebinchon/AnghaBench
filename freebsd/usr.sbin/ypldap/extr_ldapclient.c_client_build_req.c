
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ik_uid; void* ik_gid; } ;
struct idm_req {int ir_line; TYPE_1__ ir_key; } ;
struct idm {int idm_flags; char** idm_attrs; int idm_list; } ;
struct aldap_message {int dummy; } ;


 int ATTR_GR_GID ;
 int ATTR_UID ;
 int F_FIXED_ATTR (int) ;
 int F_LIST (int) ;
 int GID_MAX ;
 int UID_MAX ;
 int aldap_free_attr (char**) ;
 int aldap_match_attr (struct aldap_message*,char*,char***) ;
 int memset (struct idm_req*,int ,int) ;
 int strlcat (int ,char*,int) ;
 void* strtonum (char*,int ,int ,int *) ;

int
client_build_req(struct idm *idm, struct idm_req *ir, struct aldap_message *m,
    int min_attr, int max_attr)
{
 char **ldap_attrs;
 int i, k;

 memset(ir, 0, sizeof(*ir));
 for (i = min_attr; i < max_attr; i++) {
  if (idm->idm_flags & F_FIXED_ATTR(i)) {
   if (strlcat(ir->ir_line, idm->idm_attrs[i],
       sizeof(ir->ir_line)) >= sizeof(ir->ir_line))



    return (-1);

   if (i == ATTR_UID) {
    ir->ir_key.ik_uid = strtonum(
        idm->idm_attrs[i], 0,
        UID_MAX, ((void*)0));
   } else if (i == ATTR_GR_GID) {
    ir->ir_key.ik_gid = strtonum(
        idm->idm_attrs[i], 0,
        GID_MAX, ((void*)0));
   }
  } else if (idm->idm_list & F_LIST(i)) {
   aldap_match_attr(m, idm->idm_attrs[i], &ldap_attrs);
   for (k = 0; k >= 0 && ldap_attrs && ldap_attrs[k] != ((void*)0); k++) {

    if (strlcat(ir->ir_line, ldap_attrs[k],
        sizeof(ir->ir_line)) >= sizeof(ir->ir_line))
     continue;
    if (ldap_attrs[k+1] != ((void*)0))
     if (strlcat(ir->ir_line, ",",
          sizeof(ir->ir_line))
         >= sizeof(ir->ir_line)) {
      aldap_free_attr(ldap_attrs);
      return (-1);
     }
   }
   aldap_free_attr(ldap_attrs);
  } else {
   if (aldap_match_attr(m, idm->idm_attrs[i], &ldap_attrs) == -1)
    return (-1);
   if (strlcat(ir->ir_line, ldap_attrs[0],
       sizeof(ir->ir_line)) >= sizeof(ir->ir_line)) {
    aldap_free_attr(ldap_attrs);
    return (-1);
   }
   if (i == ATTR_UID) {
    ir->ir_key.ik_uid = strtonum(
        ldap_attrs[0], 0, UID_MAX, ((void*)0));
   } else if (i == ATTR_GR_GID) {
    ir->ir_key.ik_uid = strtonum(
        ldap_attrs[0], 0, GID_MAX, ((void*)0));
   }
   aldap_free_attr(ldap_attrs);
  }

  if (i + 1 != max_attr)
   if (strlcat(ir->ir_line, ":",
       sizeof(ir->ir_line)) >= sizeof(ir->ir_line))
    return (-1);
 }

 return (0);
}
