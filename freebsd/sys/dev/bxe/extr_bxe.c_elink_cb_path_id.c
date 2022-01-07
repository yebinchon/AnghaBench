
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 int SC_PATH (struct bxe_softc*) ;

uint8_t
elink_cb_path_id(struct bxe_softc *sc)
{
    return (SC_PATH(sc));
}
