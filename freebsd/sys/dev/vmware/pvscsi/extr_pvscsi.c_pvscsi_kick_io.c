
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pvscsi_softc {int use_req_call_threshold; struct pvscsi_rings_state* rings_state; } ;
struct pvscsi_rings_state {scalar_t__ req_prod_idx; scalar_t__ req_cons_idx; scalar_t__ req_call_threshold; } ;


 int PVSCSI_REG_OFFSET_KICK_NON_RW_IO ;
 int PVSCSI_REG_OFFSET_KICK_RW_IO ;
 scalar_t__ READ_10 ;
 scalar_t__ READ_12 ;
 scalar_t__ READ_16 ;
 scalar_t__ READ_6 ;
 scalar_t__ WRITE_10 ;
 scalar_t__ WRITE_12 ;
 scalar_t__ WRITE_16 ;
 scalar_t__ WRITE_6 ;
 int pvscsi_reg_write (struct pvscsi_softc*,int ,int ) ;

__attribute__((used)) static void
pvscsi_kick_io(struct pvscsi_softc *sc, uint8_t cdb0)
{
 struct pvscsi_rings_state *s;

 if (cdb0 == READ_6 || cdb0 == READ_10 ||
     cdb0 == READ_12 || cdb0 == READ_16 ||
     cdb0 == WRITE_6 || cdb0 == WRITE_10 ||
     cdb0 == WRITE_12 || cdb0 == WRITE_16) {
  s = sc->rings_state;

  if (!sc->use_req_call_threshold ||
      (s->req_prod_idx - s->req_cons_idx) >=
       s->req_call_threshold) {
   pvscsi_reg_write(sc, PVSCSI_REG_OFFSET_KICK_RW_IO, 0);
  }
 } else {
  pvscsi_reg_write(sc, PVSCSI_REG_OFFSET_KICK_NON_RW_IO, 0);
 }
}
