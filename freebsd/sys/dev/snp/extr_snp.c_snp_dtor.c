
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct snp_softc {int snp_outwait; int snp_outq; struct tty* snp_tty; } ;


 int M_SNP ;
 int cv_destroy (int *) ;
 int free (struct snp_softc*,int ) ;
 int tty_lock (struct tty*) ;
 int ttyhook_unregister (struct tty*) ;
 int ttyoutq_free (int *) ;

__attribute__((used)) static void
snp_dtor(void *data)
{
 struct snp_softc *ss = data;
 struct tty *tp;

 tp = ss->snp_tty;
 if (tp != ((void*)0)) {
  tty_lock(tp);
  ttyoutq_free(&ss->snp_outq);
  ttyhook_unregister(tp);
 }

 cv_destroy(&ss->snp_outwait);
 free(ss, M_SNP);
}
