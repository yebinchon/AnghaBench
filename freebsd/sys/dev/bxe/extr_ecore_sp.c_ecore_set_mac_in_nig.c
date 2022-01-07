
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int ECORE_IS_MF_SI_MODE (struct bxe_softc*) ;
 int ECORE_LLH_CAM_MAX_PF_LINE ;
 int ECORE_MSG (struct bxe_softc*,char*,char*,int) ;
 scalar_t__ ECORE_PORT_ID (struct bxe_softc*) ;
 int ECORE_REG_WR_DMAE_LEN (struct bxe_softc*,int,int*,int) ;
 int IS_MF_AFEX (struct bxe_softc*) ;
 int NIG_REG_LLH0_FUNC_MEM ;
 scalar_t__ NIG_REG_LLH0_FUNC_MEM_ENABLE ;
 int NIG_REG_LLH1_FUNC_MEM ;
 scalar_t__ NIG_REG_LLH1_FUNC_MEM_ENABLE ;
 int REG_WR (struct bxe_softc*,scalar_t__,int) ;

void ecore_set_mac_in_nig(struct bxe_softc *sc,
     bool add, unsigned char *dev_addr, int index)
{
 uint32_t wb_data[2];
 uint32_t reg_offset = ECORE_PORT_ID(sc) ? NIG_REG_LLH1_FUNC_MEM :
    NIG_REG_LLH0_FUNC_MEM;

 if (!ECORE_IS_MF_SI_MODE(sc) && !IS_MF_AFEX(sc))
  return;

 if (index > ECORE_LLH_CAM_MAX_PF_LINE)
  return;

 ECORE_MSG(sc, "Going to %s LLH configuration at entry %d\n",
    (add ? "ADD" : "DELETE"), index);

 if (add) {

  reg_offset += 8*index;

  wb_data[0] = ((dev_addr[2] << 24) | (dev_addr[3] << 16) |
         (dev_addr[4] << 8) | dev_addr[5]);
  wb_data[1] = ((dev_addr[0] << 8) | dev_addr[1]);

  ECORE_REG_WR_DMAE_LEN(sc, reg_offset, wb_data, 2);
 }

 REG_WR(sc, (ECORE_PORT_ID(sc) ? NIG_REG_LLH1_FUNC_MEM_ENABLE :
      NIG_REG_LLH0_FUNC_MEM_ENABLE) + 4*index, add);
}
