
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct bxe_softc {int dummy; } ;


 int SC_FUNC (struct bxe_softc*) ;
 int TRUE ;
 int bxe_igu_clear_sb_gen (struct bxe_softc*,int ,int ,int ) ;

__attribute__((used)) static void
bxe_igu_clear_sb(struct bxe_softc *sc,
                 uint8_t idu_sb_id)
{
    bxe_igu_clear_sb_gen(sc, SC_FUNC(sc), idu_sb_id, TRUE );
}
