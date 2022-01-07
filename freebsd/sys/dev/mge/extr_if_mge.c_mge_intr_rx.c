
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mge_softc {TYPE_1__* ifp; } ;
struct TYPE_2__ {int if_capenable; } ;


 int IFCAP_POLLING ;
 int MGE_PORT_INT_CAUSE ;
 int MGE_PORT_INT_CAUSE_EXT ;
 int MGE_READ (struct mge_softc*,int ) ;
 int MGE_RECEIVE_LOCK (struct mge_softc*) ;
 int MGE_RECEIVE_UNLOCK (struct mge_softc*) ;
 int mge_intr_rx_check (struct mge_softc*,int ,int ) ;

__attribute__((used)) static void
mge_intr_rx(void *arg) {
 struct mge_softc *sc;
 uint32_t int_cause, int_cause_ext;

 sc = arg;
 MGE_RECEIVE_LOCK(sc);
 int_cause = MGE_READ(sc, MGE_PORT_INT_CAUSE);
 int_cause_ext = MGE_READ(sc, MGE_PORT_INT_CAUSE_EXT);

 mge_intr_rx_check(sc, int_cause, int_cause_ext);

 MGE_RECEIVE_UNLOCK(sc);
}
