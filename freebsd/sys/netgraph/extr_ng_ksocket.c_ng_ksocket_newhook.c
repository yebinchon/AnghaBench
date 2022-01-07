
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int td_ucred; } ;
typedef TYPE_1__* priv_p ;
typedef int node_p ;
typedef int name ;
typedef int * hook_p ;
struct TYPE_4__ {int flags; int * hook; int so; } ;


 int EINVAL ;
 int EISCONN ;
 int KSF_CLONED ;
 int KSF_EMBRYONIC ;
 int LIST_REMOVE (TYPE_1__* const,int ) ;
 int NG_HOOKSIZ ;
 int NG_HOOK_FORCE_QUEUE (int *) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 struct thread* curthread ;
 int ng_ksocket_families ;
 int ng_ksocket_parse (int ,char*,int) ;
 int ng_ksocket_protos ;
 int ng_ksocket_types ;
 int siblings ;
 int snprintf (char*,int,char*,char const*) ;
 int socreate (int,int *,int,int,int ,struct thread*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
ng_ksocket_newhook(node_p node, hook_p hook, const char *name0)
{
 struct thread *td = curthread;
 const priv_p priv = NG_NODE_PRIVATE(node);
 char *s1, *s2, name[NG_HOOKSIZ];
 int family, type, protocol, error;


 if (priv->hook != ((void*)0))
  return (EISCONN);

 if (priv->flags & KSF_CLONED) {
  if (priv->flags & KSF_EMBRYONIC) {

   LIST_REMOVE(priv, siblings);
   priv->flags &= ~KSF_EMBRYONIC;
  }
 } else {

  snprintf(name, sizeof(name), "%s", name0);
  s1 = name;
  if ((s2 = strchr(s1, '/')) == ((void*)0))
   return (EINVAL);
  *s2++ = '\0';
  family = ng_ksocket_parse(ng_ksocket_families, s1, 0);
  if (family == -1)
   return (EINVAL);
  s1 = s2;
  if ((s2 = strchr(s1, '/')) == ((void*)0))
   return (EINVAL);
  *s2++ = '\0';
  type = ng_ksocket_parse(ng_ksocket_types, s1, 0);
  if (type == -1)
   return (EINVAL);
  s1 = s2;
  protocol = ng_ksocket_parse(ng_ksocket_protos, s1, family);
  if (protocol == -1)
   return (EINVAL);


  error = socreate(family, &priv->so, type, protocol,
     td->td_ucred, td);
  if (error != 0)
   return (error);



 }


 priv->hook = hook;






 NG_HOOK_FORCE_QUEUE(hook);

 return(0);
}
