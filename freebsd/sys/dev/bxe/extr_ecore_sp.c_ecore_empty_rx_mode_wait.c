
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_rx_mode_ramrod_params {int dummy; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_SUCCESS ;

__attribute__((used)) static int ecore_empty_rx_mode_wait(struct bxe_softc *sc,
        struct ecore_rx_mode_ramrod_params *p)
{

 return ECORE_SUCCESS;
}
