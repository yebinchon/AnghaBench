
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int node_p ;
typedef TYPE_1__* ng_h4_info_p ;
typedef int * hook_p ;
struct TYPE_4__ {int * hook; } ;


 int EINVAL ;
 int EISCONN ;
 int NG_H4_HOOK ;
 int NG_H4_LOCK (TYPE_1__*) ;
 int NG_H4_UNLOCK (TYPE_1__*) ;
 int NG_NODE_PRIVATE (int ) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ng_h4_newhook(node_p node, hook_p hook, const char *name)
{
 ng_h4_info_p sc = (ng_h4_info_p) NG_NODE_PRIVATE(node);

 if (strcmp(name, NG_H4_HOOK) != 0)
  return (EINVAL);

 NG_H4_LOCK(sc);

 if (sc->hook != ((void*)0)) {
  NG_H4_UNLOCK(sc);
  return (EISCONN);
 }
 sc->hook = hook;

 NG_H4_UNLOCK(sc);

 return (0);
}
