
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct ngsock {int hmask; int * hash; } ;
struct hookpriv {int hook; } ;
typedef TYPE_1__* node_p ;
typedef int hook_p ;
struct TYPE_5__ {int nd_numhooks; } ;


 int ENOMEM ;
 int HASHINIT ;
 int LIST_INSERT_HEAD (int *,struct hookpriv*,int ) ;
 int M_NETGRAPH_SOCK ;
 int M_NOWAIT ;
 int NG_HOOK_SET_PRIVATE (int ,struct hookpriv*) ;
 struct ngsock* NG_NODE_PRIVATE (TYPE_1__*) ;
 size_t hash32_str (char const*,int ) ;
 struct hookpriv* malloc (int,int ,int ) ;
 int next ;
 int ngs_rehash (TYPE_1__*) ;

__attribute__((used)) static int
ngs_newhook(node_p node, hook_p hook, const char *name)
{
 struct ngsock *const priv = NG_NODE_PRIVATE(node);
 struct hookpriv *hp;
 uint32_t h;

 hp = malloc(sizeof(*hp), M_NETGRAPH_SOCK, M_NOWAIT);
 if (hp == ((void*)0))
  return (ENOMEM);
 if (node->nd_numhooks * 2 > priv->hmask)
  ngs_rehash(node);
 hp->hook = hook;
 h = hash32_str(name, HASHINIT) & priv->hmask;
 LIST_INSERT_HEAD(&priv->hash[h], hp, next);
 NG_HOOK_SET_PRIVATE(hook, hp);

 return (0);
}
