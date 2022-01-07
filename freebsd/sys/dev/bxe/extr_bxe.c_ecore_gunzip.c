
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int DBG_LOAD ;
 int FALSE ;

__attribute__((used)) static int
ecore_gunzip(struct bxe_softc *sc,
             const uint8_t *zbuf,
             int len)
{

    BLOGD(sc, DBG_LOAD, "ECORE_GUNZIP NOT IMPLEMENTED\n");
    return (FALSE);
}
