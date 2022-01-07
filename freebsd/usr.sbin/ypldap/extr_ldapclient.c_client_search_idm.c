
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idm_req {int dummy; } ;
struct idm {char* idm_basedn; char* idm_groupdn; } ;
struct env {int sc_iev; } ;
struct aldap_page_control {scalar_t__ cookie_len; } ;
struct aldap_message {scalar_t__ msgid; scalar_t__ message_type; struct aldap_page_control* page; } ;
struct aldap {scalar_t__ msgid; } ;
typedef int ir ;
typedef enum imsg_type { ____Placeholder_imsg_type } imsg_type ;


 int IMSG_GRP_ENTRY ;
 scalar_t__ LDAP_RES_SEARCH_ENTRY ;
 scalar_t__ LDAP_RES_SEARCH_RESULT ;
 int LDAP_SCOPE_SUBTREE ;
 int aldap_freemsg (struct aldap_message*) ;
 int aldap_freepage (struct aldap_page_control*) ;
 int aldap_get_errno (struct aldap*,char const**) ;
 struct aldap_message* aldap_parse (struct aldap*) ;
 int aldap_search (struct aldap*,char*,int ,char*,char**,int ,int ,int ,struct aldap_page_control*) ;
 scalar_t__ client_build_req (struct idm*,struct idm_req*,struct aldap_message*,int,int) ;
 int imsg_compose_event (int ,int,int ,int ,int,struct idm_req*,int) ;
 int log_debug (char*,char const*) ;

int
client_search_idm(struct env *env, struct idm *idm, struct aldap *al,
    char **attrs, char *filter, int min_attr, int max_attr,
    enum imsg_type type)
{
 struct idm_req ir;
 struct aldap_message *m;
 struct aldap_page_control *pg = ((void*)0);
 const char *errstr;
 char *dn;

 dn = idm->idm_basedn;
 if (type == IMSG_GRP_ENTRY && idm->idm_groupdn[0] != '\0')
  dn = idm->idm_groupdn;

 do {
  if (aldap_search(al, dn, LDAP_SCOPE_SUBTREE,
      filter, attrs, 0, 0, 0, pg) == -1) {
   aldap_get_errno(al, &errstr);
   log_debug("%s", errstr);
   return (-1);
  }

  if (pg != ((void*)0)) {
   aldap_freepage(pg);
   pg = ((void*)0);
  }

  while ((m = aldap_parse(al)) != ((void*)0)) {
   if (al->msgid != m->msgid) {
    goto fail;
   }

   if (m->message_type == LDAP_RES_SEARCH_RESULT) {
    if (m->page != ((void*)0) && m->page->cookie_len != 0)
     pg = m->page;
    else
     pg = ((void*)0);

    aldap_freemsg(m);
    break;
   }

   if (m->message_type != LDAP_RES_SEARCH_ENTRY) {
    goto fail;
   }

   if (client_build_req(idm, &ir, m, min_attr, max_attr) == 0)
    imsg_compose_event(env->sc_iev, type, 0, 0, -1,
        &ir, sizeof(ir));

   aldap_freemsg(m);
  }
 } while (pg != ((void*)0));

 return (0);

fail:
 aldap_freemsg(m);
 if (pg != ((void*)0)) {
  aldap_freepage(pg);
 }

 return (-1);
}
