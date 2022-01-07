
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
typedef scalar_t__ hook_p ;
struct TYPE_3__ {scalar_t__ sync; scalar_t__ async; } ;


 int EINVAL ;
 int EISCONN ;
 int NG_ASYNC_HOOK_ASYNC ;
 int NG_ASYNC_HOOK_SYNC ;
 int NG_HOOK_FORCE_WRITER (scalar_t__) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int
nga_newhook(node_p node, hook_p hook, const char *name)
{
 const sc_p sc = NG_NODE_PRIVATE(node);
 hook_p *hookp;

 if (!strcmp(name, NG_ASYNC_HOOK_ASYNC)) {





  NG_HOOK_FORCE_WRITER(hook);
  hookp = &sc->async;
 } else if (!strcmp(name, NG_ASYNC_HOOK_SYNC)) {
  NG_HOOK_FORCE_WRITER(hook);
  hookp = &sc->sync;
 } else {
  return (EINVAL);
 }
 if (*hookp)
  return (EISCONN);
 *hookp = hook;
 return (0);
}
