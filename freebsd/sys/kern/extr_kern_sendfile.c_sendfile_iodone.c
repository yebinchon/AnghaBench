
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_page_t ;
struct socket {TYPE_5__* so_proto; int so_error; int so_vnet; } ;
struct sf_io {int error; int npages; TYPE_6__* m; TYPE_3__* tls; int nios; struct socket* so; } ;
struct TYPE_10__ {scalar_t__ ext_type; TYPE_1__* ext_pgs; } ;
struct TYPE_14__ {int m_flags; TYPE_2__ m_ext; } ;
struct TYPE_13__ {TYPE_4__* pr_usrreqs; } ;
struct TYPE_12__ {int (* pru_ready ) (struct socket*,TYPE_6__*,int ) ;int (* pru_abort ) (struct socket*) ;} ;
struct TYPE_11__ {scalar_t__ mode; } ;
struct TYPE_9__ {TYPE_3__* tls; } ;


 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int EIO ;
 scalar_t__ EXT_PGS ;
 int KASSERT (int,char*) ;
 int M_EXT ;
 int M_TEMP ;
 int SOCK_LOCK (struct socket*) ;
 scalar_t__ TCP_TLS_MODE_SW ;
 scalar_t__ __predict_false (int) ;
 scalar_t__ bogus_page ;
 int free (struct sf_io*,int ) ;
 int ktls_enqueue (TYPE_6__*,struct socket*,int ) ;
 int mb_free_notready (TYPE_6__*,int ) ;
 int refcount_release (int *) ;
 int sorele (struct socket*) ;
 int stub1 (struct socket*) ;
 int stub2 (struct socket*,TYPE_6__*,int ) ;
 int vm_page_xunbusy (scalar_t__) ;

__attribute__((used)) static void
sendfile_iodone(void *arg, vm_page_t *pg, int count, int error)
{
 struct sf_io *sfio = arg;
 struct socket *so = sfio->so;

 for (int i = 0; i < count; i++)
  if (pg[i] != bogus_page)
   vm_page_xunbusy(pg[i]);

 if (error)
  sfio->error = error;

 if (!refcount_release(&sfio->nios))
  return;

 if (__predict_false(sfio->error && sfio->m == ((void*)0))) {





  free(sfio, M_TEMP);
  return;
 }
 CURVNET_SET(so->so_vnet);
 if (__predict_false(sfio->error)) {
  so->so_proto->pr_usrreqs->pru_abort(so);
  so->so_error = EIO;

  mb_free_notready(sfio->m, sfio->npages);
 } else
  (void)(so->so_proto->pr_usrreqs->pru_ready)(so, sfio->m,
      sfio->npages);

 SOCK_LOCK(so);
 sorele(so);



 CURVNET_RESTORE();
 free(sfio, M_TEMP);
}
