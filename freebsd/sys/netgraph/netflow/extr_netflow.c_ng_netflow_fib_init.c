
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct fib_export {int dummy; } ;
typedef TYPE_1__* priv_p ;
typedef TYPE_2__* fib_export_p ;
struct TYPE_11__ {int fib; int domain_id; int export9_mtx; int export_mtx; } ;
struct TYPE_10__ {int nfinfo_alloc_fibs; int * fib_data; } ;


 int CTR1 (int ,char*,int) ;
 int CTR3 (int ,char*,int,TYPE_2__*,TYPE_2__*) ;
 int ENOMEM ;
 int KTR_NET ;
 int MTX_DEF ;
 int M_NETGRAPH ;
 int M_NOWAIT ;
 int M_ZERO ;
 scalar_t__ atomic_cmpset_ptr (uintptr_t volatile*,uintptr_t,uintptr_t) ;
 int free (TYPE_2__*,int ) ;
 TYPE_2__* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 TYPE_2__* priv_to_fib (TYPE_1__*,int) ;

int
ng_netflow_fib_init(priv_p priv, int fib)
{
 fib_export_p fe = priv_to_fib(priv, fib);

 CTR1(KTR_NET, "ng_netflow(): fib init: %d", fib);

 if (fe != ((void*)0))
  return (0);

 if ((fe = malloc(sizeof(struct fib_export), M_NETGRAPH,
     M_NOWAIT | M_ZERO)) == ((void*)0))
  return (ENOMEM);

 mtx_init(&fe->export_mtx, "export dgram lock", ((void*)0), MTX_DEF);
 mtx_init(&fe->export9_mtx, "export9 dgram lock", ((void*)0), MTX_DEF);
 fe->fib = fib;
 fe->domain_id = fib;

 if (atomic_cmpset_ptr((volatile uintptr_t *)&priv->fib_data[fib],
     (uintptr_t)((void*)0), (uintptr_t)fe) == 0) {

  CTR3(KTR_NET, "ng_netflow(): fib init: %d setup %p but got %p",
      fib, fe, priv_to_fib(priv, fib));
  mtx_destroy(&fe->export_mtx);
  mtx_destroy(&fe->export9_mtx);
  free(fe, M_NETGRAPH);
 } else {

  CTR3(KTR_NET, "ng_netflow(): fib %d setup to %p (%p)",
      fib, fe, priv_to_fib(priv, fib));
  priv->nfinfo_alloc_fibs++;
 }

 return (0);
}
