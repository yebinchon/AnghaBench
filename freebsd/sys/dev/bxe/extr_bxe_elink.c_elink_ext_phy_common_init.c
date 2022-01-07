
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bxe_softc {int dummy; } ;
typedef scalar_t__ elink_status_t ;


 int ELINK_DEBUG_P1 (struct bxe_softc*,char*,int) ;
 int ELINK_LOG_ID_PHY_UNINITIALIZED ;
 scalar_t__ ELINK_STATUS_ERROR ;
 scalar_t__ ELINK_STATUS_OK ;
 scalar_t__ elink_8073_common_init_phy (struct bxe_softc*,int*,int*,int ,int) ;
 scalar_t__ elink_84833_common_init_phy (struct bxe_softc*,int*,int*,int ,int) ;
 scalar_t__ elink_8726_common_init_phy (struct bxe_softc*,int*,int*,int ,int) ;
 scalar_t__ elink_8727_common_init_phy (struct bxe_softc*,int*,int*,int ,int) ;
 int elink_cb_event_log (struct bxe_softc*,int ,int ) ;

__attribute__((used)) static elink_status_t elink_ext_phy_common_init(struct bxe_softc *sc, uint32_t shmem_base_path[],
         uint32_t shmem2_base_path[], uint8_t phy_index,
         uint32_t ext_phy_type, uint32_t chip_id)
{
 elink_status_t rc = ELINK_STATUS_OK;

 switch (ext_phy_type) {
 case 136:
  rc = elink_8073_common_init_phy(sc, shmem_base_path,
      shmem2_base_path,
      phy_index, chip_id);
  break;
 case 132:
 case 130:
 case 129:
  rc = elink_8727_common_init_phy(sc, shmem_base_path,
      shmem2_base_path,
      phy_index, chip_id);
  break;

 case 131:



  rc = elink_8726_common_init_phy(sc, shmem_base_path,
      shmem2_base_path,
      phy_index, chip_id);
  break;
 case 135:
 case 134:
 case 133:



  rc = elink_84833_common_init_phy(sc, shmem_base_path,
      shmem2_base_path,
      phy_index, chip_id);
  break;
 case 128:
  rc = ELINK_STATUS_ERROR;
  break;
 default:
  ELINK_DEBUG_P1(sc,
      "ext_phy 0x%x common init not required\n",
      ext_phy_type);
  break;
 }

 if (rc != ELINK_STATUS_OK)
  elink_cb_event_log(sc, ELINK_LOG_ID_PHY_UNINITIALIZED, 0);


 return rc;
}
