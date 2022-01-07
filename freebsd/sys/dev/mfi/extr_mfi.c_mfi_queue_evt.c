
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mfi_softc {int mfi_evt_task; int mfi_evt_queue; int mfi_io_lock; } ;
struct mfi_evt_queue_elm {int detail; } ;
struct mfi_evt_detail {int dummy; } ;


 int MA_OWNED ;
 int M_MFIBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct mfi_evt_queue_elm*,int ) ;
 int link ;
 struct mfi_evt_queue_elm* malloc (int,int ,int) ;
 int memcpy (int *,struct mfi_evt_detail*,int) ;
 int mtx_assert (int *,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

__attribute__((used)) static void
mfi_queue_evt(struct mfi_softc *sc, struct mfi_evt_detail *detail)
{
 struct mfi_evt_queue_elm *elm;

 mtx_assert(&sc->mfi_io_lock, MA_OWNED);
 elm = malloc(sizeof(*elm), M_MFIBUF, M_NOWAIT|M_ZERO);
 if (elm == ((void*)0))
  return;
 memcpy(&elm->detail, detail, sizeof(*detail));
 TAILQ_INSERT_TAIL(&sc->mfi_evt_queue, elm, link);
 taskqueue_enqueue(taskqueue_swi, &sc->mfi_evt_task);
}
