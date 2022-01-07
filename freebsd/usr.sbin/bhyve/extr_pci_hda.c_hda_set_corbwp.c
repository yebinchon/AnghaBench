
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hda_softc {int dummy; } ;


 int hda_corb_run (struct hda_softc*) ;

__attribute__((used)) static void
hda_set_corbwp(struct hda_softc *sc, uint32_t offset, uint32_t old)
{
 hda_corb_run(sc);
}
