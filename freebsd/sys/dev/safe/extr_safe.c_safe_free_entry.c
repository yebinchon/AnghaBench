
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct safe_softc {int dummy; } ;
struct TYPE_2__ {scalar_t__ d_csr; } ;
struct safe_ringentry {TYPE_1__ re_desc; scalar_t__ re_crp; int * re_dst_m; int * re_src_m; } ;
struct cryptop {int crp_etype; } ;


 int EFAULT ;
 int crypto_done (struct cryptop*) ;
 int m_freem (int *) ;

__attribute__((used)) static int
safe_free_entry(struct safe_softc *sc, struct safe_ringentry *re)
{
 struct cryptop *crp;




 if ((re->re_dst_m != ((void*)0)) && (re->re_src_m != re->re_dst_m))
  m_freem(re->re_dst_m);

 crp = (struct cryptop *)re->re_crp;

 re->re_desc.d_csr = 0;

 crp->crp_etype = EFAULT;
 crypto_done(crp);
 return(0);
}
