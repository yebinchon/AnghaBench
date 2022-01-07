
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
typedef int node_p ;
typedef TYPE_1__* hpriv_p ;
typedef int hook_p ;
struct TYPE_4__ {scalar_t__ rulenum; int hook; } ;


 int EINVAL ;
 int ENOMEM ;
 int M_NETGRAPH ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_HOOK_SET_PRIVATE (int ,TYPE_1__*) ;
 int isdigit (char const) ;
 TYPE_1__* malloc (int,int ,int) ;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static int
ng_ipfw_newhook(node_p node, hook_p hook, const char *name)
{
 hpriv_p hpriv;
 u_int16_t rulenum;
 const char *cp;
 char *endptr;


 if (name[0] == '0' && name[1] != '\0')
  return (EINVAL);


 for (cp = name; *cp != '\0'; cp++)
  if (!isdigit(*cp))
   return (EINVAL);


 rulenum = (u_int16_t)strtol(name, &endptr, 10);
 if (*endptr != '\0')
  return (EINVAL);


 hpriv = malloc(sizeof(*hpriv), M_NETGRAPH, M_NOWAIT | M_ZERO);
 if (hpriv== ((void*)0))
  return (ENOMEM);

 hpriv->hook = hook;
 hpriv->rulenum = rulenum;

 NG_HOOK_SET_PRIVATE(hook, hpriv);

 return(0);
}
