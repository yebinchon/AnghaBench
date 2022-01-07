
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sample_softc {int dummy; } ;
struct ath_ratectrl {int dummy; } ;


 int M_DEVBUF ;
 int free (struct sample_softc*,int ) ;

void
ath_rate_detach(struct ath_ratectrl *arc)
{
 struct sample_softc *ssc = (struct sample_softc *) arc;

 free(ssc, M_DEVBUF);
}
