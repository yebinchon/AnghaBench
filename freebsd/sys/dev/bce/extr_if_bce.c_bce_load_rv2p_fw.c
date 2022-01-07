
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bce_softc {int dummy; } ;


 int BCE_RV2P_COMMAND ;
 scalar_t__ BCE_RV2P_COMMAND_PROC1_RESET ;
 scalar_t__ BCE_RV2P_COMMAND_PROC2_RESET ;
 int BCE_RV2P_INSTR_HIGH ;
 int BCE_RV2P_INSTR_LOW ;
 int BCE_RV2P_PROC1_ADDR_CMD ;
 int BCE_RV2P_PROC1_ADDR_CMD_RDWR ;
 int BCE_RV2P_PROC2_ADDR_CMD ;
 int BCE_RV2P_PROC2_ADDR_CMD_RDWR ;
 int BCE_RV2P_PROC2_CHG_MAX_BD_PAGE (int ) ;
 int BCE_VERBOSE_RESET ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int REG_WR (struct bce_softc*,int ,scalar_t__ const) ;
 scalar_t__ RV2P_PROC1 ;
 scalar_t__ RV2P_PROC2 ;
 int USABLE_RX_BD_PER_PAGE ;

__attribute__((used)) static void
bce_load_rv2p_fw(struct bce_softc *sc, const u32 *rv2p_code,
 u32 rv2p_code_len, u32 rv2p_proc)
{
 int i;
 u32 val;

 DBENTER(BCE_VERBOSE_RESET);


 if (rv2p_proc == RV2P_PROC2) {
  BCE_RV2P_PROC2_CHG_MAX_BD_PAGE(USABLE_RX_BD_PER_PAGE);
 }

 for (i = 0; i < rv2p_code_len; i += 8) {
  REG_WR(sc, BCE_RV2P_INSTR_HIGH, *rv2p_code);
  rv2p_code++;
  REG_WR(sc, BCE_RV2P_INSTR_LOW, *rv2p_code);
  rv2p_code++;

  if (rv2p_proc == RV2P_PROC1) {
   val = (i / 8) | BCE_RV2P_PROC1_ADDR_CMD_RDWR;
   REG_WR(sc, BCE_RV2P_PROC1_ADDR_CMD, val);
  }
  else {
   val = (i / 8) | BCE_RV2P_PROC2_ADDR_CMD_RDWR;
   REG_WR(sc, BCE_RV2P_PROC2_ADDR_CMD, val);
  }
 }


 if (rv2p_proc == RV2P_PROC1) {
  REG_WR(sc, BCE_RV2P_COMMAND, BCE_RV2P_COMMAND_PROC1_RESET);
 }
 else {
  REG_WR(sc, BCE_RV2P_COMMAND, BCE_RV2P_COMMAND_PROC2_RESET);
 }

 DBEXIT(BCE_VERBOSE_RESET);
}
