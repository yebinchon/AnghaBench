
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_ratectrl {int dummy; } ;
struct amrr_softc {int dummy; } ;


 int M_DEVBUF ;
 int free (struct amrr_softc*,int ) ;

void
ath_rate_detach(struct ath_ratectrl *arc)
{
 struct amrr_softc *asc = (struct amrr_softc *) arc;

 free(asc, M_DEVBUF);
}
