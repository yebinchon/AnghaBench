
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sc_p ;
typedef int node_p ;
typedef scalar_t__ hook_p ;
struct TYPE_5__ {scalar_t__ hook; } ;


 int EINVAL ;
 int EISCONN ;
 int NGTLOCK (TYPE_1__* const) ;
 int NGTUNLOCK (TYPE_1__* const) ;
 TYPE_1__* NG_NODE_PRIVATE (int ) ;
 int NG_TTY_HOOK ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
ngt_newhook(node_p node, hook_p hook, const char *name)
{
 const sc_p sc = NG_NODE_PRIVATE(node);

 if (strcmp(name, NG_TTY_HOOK))
  return (EINVAL);

 if (sc->hook)
  return (EISCONN);

 NGTLOCK(sc);
 sc->hook = hook;
 NGTUNLOCK(sc);

 return (0);
}
