
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;
struct snp_softc {int snp_outpoll; int snp_outwait; int snp_outq; } ;


 int cv_broadcast (int *) ;
 int selwakeup (int *) ;
 struct snp_softc* ttyhook_softc (struct tty*) ;
 int ttyoutq_write (int *,void const*,size_t) ;

__attribute__((used)) static void
snp_getc_capture(struct tty *tp, const void *buf, size_t len)
{
 struct snp_softc *ss = ttyhook_softc(tp);

 ttyoutq_write(&ss->snp_outq, buf, len);

 cv_broadcast(&ss->snp_outwait);
 selwakeup(&ss->snp_outpoll);
}
