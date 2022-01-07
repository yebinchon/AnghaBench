
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fwohci_softc {TYPE_2__* it; } ;
struct firewire_comm {int dummy; } ;
struct TYPE_3__ {int flag; } ;
struct TYPE_4__ {TYPE_1__ xferq; } ;


 int FWXFERQ_RUNNING ;
 int OHCI_CNTL_CYCMATCH_S ;
 int OHCI_CNTL_DMA_RUN ;
 int OHCI_ITCTLCLR (int) ;
 int OHCI_IT_MASKCLR ;
 int OHCI_IT_STATCLR ;
 int OWRITE (struct fwohci_softc*,int ,int) ;
 int fwohci_db_free (TYPE_2__*) ;
 int hz ;
 int pause (char*,int ) ;

__attribute__((used)) static int
fwohci_itx_disable(struct firewire_comm *fc, int dmach)
{
 struct fwohci_softc *sc = (struct fwohci_softc *)fc;

 OWRITE(sc, OHCI_ITCTLCLR(dmach),
   OHCI_CNTL_DMA_RUN | OHCI_CNTL_CYCMATCH_S);
 OWRITE(sc, OHCI_IT_MASKCLR, 1 << dmach);
 OWRITE(sc, OHCI_IT_STATCLR, 1 << dmach);

 pause("fwitxd", hz);
 fwohci_db_free(&sc->it[dmach]);
 sc->it[dmach].xferq.flag &= ~FWXFERQ_RUNNING;
 return 0;
}
