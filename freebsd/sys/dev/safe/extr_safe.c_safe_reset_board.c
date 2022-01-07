
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct safe_softc {int dummy; } ;


 int READ_REG (struct safe_softc*,int ) ;
 int SAFE_PE_DMACFG ;
 int SAFE_PE_DMACFG_PDRRESET ;
 int SAFE_PE_DMACFG_PERESET ;
 int SAFE_PE_DMACFG_SGRESET ;
 int WRITE_REG (struct safe_softc*,int ,int) ;

__attribute__((used)) static void
safe_reset_board(struct safe_softc *sc)
{
 u_int32_t v;




 v = READ_REG(sc, SAFE_PE_DMACFG) &~
  (SAFE_PE_DMACFG_PERESET | SAFE_PE_DMACFG_PDRRESET |
   SAFE_PE_DMACFG_SGRESET);
 WRITE_REG(sc, SAFE_PE_DMACFG, v
        | SAFE_PE_DMACFG_PERESET
        | SAFE_PE_DMACFG_PDRRESET
        | SAFE_PE_DMACFG_SGRESET);
 WRITE_REG(sc, SAFE_PE_DMACFG, v);
}
