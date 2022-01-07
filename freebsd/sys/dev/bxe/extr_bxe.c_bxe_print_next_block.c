
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int BLOGI (struct bxe_softc*,char*,char*,char const*) ;

__attribute__((used)) static void
bxe_print_next_block(struct bxe_softc *sc,
                     int idx,
                     const char *blk)
{
    BLOGI(sc, "%s%s", idx ? ", " : "", blk);
}
