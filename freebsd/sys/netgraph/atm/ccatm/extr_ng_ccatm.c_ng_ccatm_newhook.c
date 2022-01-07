
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct ccuser {int dummy; } ;
typedef struct ccuser ccport ;
struct ccnode {int hook_cnt; int data; void* manage; void* dump; } ;
struct cchook {int is_uni; struct ccuser* inst; void* hook; struct ccnode* node; } ;
typedef int node_p ;
typedef void* hook_p ;


 int EINVAL ;
 int ENOMEM ;
 int M_NG_CCATM ;
 int M_NOWAIT ;
 int NG_HOOK_FORCE_QUEUE (void*) ;
 int NG_HOOK_NAME (void*) ;
 int NG_HOOK_SET_PRIVATE (void*,struct cchook*) ;
 int NG_HOOK_SET_RCVDATA (void*,int ) ;
 struct ccnode* NG_NODE_PRIVATE (int ) ;
 struct ccuser* cc_port_create (int ,struct cchook*,int ) ;
 struct ccuser* cc_user_create (int ,struct cchook*,int ) ;
 int free (struct cchook*,int ) ;
 struct cchook* malloc (int,int ,int ) ;
 int ng_ccatm_rcvdump ;
 int ng_ccatm_rcvmanage ;
 int ng_ccatm_rcvuni ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static int
ng_ccatm_newhook(node_p node, hook_p hook, const char *name)
{
 struct ccnode *priv = NG_NODE_PRIVATE(node);
 struct ccport *port;
 struct ccuser *user;
 struct cchook *hd;
 u_long lport;
 char *end;

 if (strncmp(name, "uni", 3) == 0) {



  if (name[3] == '\0')
   return (EINVAL);
  lport = strtoul(name + 3, &end, 10);
  if (*end != '\0' || lport == 0 || lport > 0xffffffff)
   return (EINVAL);

  hd = malloc(sizeof(*hd), M_NG_CCATM, M_NOWAIT);
  if (hd == ((void*)0))
   return (ENOMEM);
  hd->is_uni = 1;
  hd->node = priv;
  hd->hook = hook;

  port = cc_port_create(priv->data, hd, (u_int)lport);
  if (port == ((void*)0)) {
   free(hd, M_NG_CCATM);
   return (ENOMEM);
  }
  hd->inst = port;

  NG_HOOK_SET_PRIVATE(hook, hd);
  NG_HOOK_SET_RCVDATA(hook, ng_ccatm_rcvuni);
  NG_HOOK_FORCE_QUEUE(hook);

  priv->hook_cnt++;

  return (0);
 }

 if (strcmp(name, "dump") == 0) {
  priv->dump = hook;
  NG_HOOK_SET_RCVDATA(hook, ng_ccatm_rcvdump);
  return (0);
 }

 if (strcmp(name, "manage") == 0) {
  priv->manage = hook;
  NG_HOOK_SET_RCVDATA(hook, ng_ccatm_rcvmanage);
  return (0);
 }




 hd = malloc(sizeof(*hd), M_NG_CCATM, M_NOWAIT);
 if (hd == ((void*)0))
  return (ENOMEM);
 hd->is_uni = 0;
 hd->node = priv;
 hd->hook = hook;

 user = cc_user_create(priv->data, hd, NG_HOOK_NAME(hook));
 if (user == ((void*)0)) {
  free(hd, M_NG_CCATM);
  return (ENOMEM);
 }

 hd->inst = user;
 NG_HOOK_SET_PRIVATE(hook, hd);
 NG_HOOK_FORCE_QUEUE(hook);

 priv->hook_cnt++;

 return (0);
}
