
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
struct thread {int dummy; } ;
struct dump_header {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_10__ {char* bc_ver_str; int flash_size; } ;
struct bxe_softc {int pcie_func; char* fw_ver_str; int pcie_bus; int pcie_device; char* mac_addr_str; int dev; int grcdump_done; int grcdump_started; int * grc_dump; TYPE_1__ devinfo; int trigger_grcdump; } ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_11__ {int reg_val; int reg_id; int reg_access_type; int reg_cmd; } ;
typedef TYPE_2__ bxe_reg_rdw_t ;
struct TYPE_12__ {int mac_addr_str; } ;
typedef TYPE_3__ bxe_perm_mac_addr_t ;
struct TYPE_13__ {int cfg_width; int cfg_val; int cfg_id; int cfg_cmd; } ;
typedef TYPE_4__ bxe_pcicfg_rdw_t ;
struct TYPE_14__ {int pci_func; int grcdump_size; int grcdump_dwords; int * grcdump; } ;
typedef TYPE_5__ bxe_grcdump_t ;
struct TYPE_15__ {int reg_buf_len; int * reg_buf; } ;
typedef TYPE_6__ bxe_get_regs_t ;
typedef int bxe_eeprom_t ;
struct TYPE_16__ {int reg_dump_len; int bus_info; int eeprom_dump_len; int stormfw_version; int mfw_version; int drv_version; int drv_name; } ;
typedef TYPE_7__ bxe_drvinfo_t ;
struct TYPE_17__ {int autoneg; int phy_address; int port; int duplex; int speed; int advertising; int supported; } ;
typedef TYPE_8__ bxe_dev_setting_t ;


 int BLOGW (struct bxe_softc*,char*) ;
 int BXE_BUS_INFO_LENGTH ;

 char* BXE_DRIVER_VERSION ;

 int BXE_DRV_NAME_LENGTH ;
 int BXE_DRV_VERSION_LENGTH ;





 int BXE_MFW_VERSION_LENGTH ;


 int BXE_READ_PCICFG ;
 int BXE_READ_REG_CMD ;
 int BXE_REG_ACCESS_DIRECT ;
 int BXE_STORMFW_VERSION_LENGTH ;
 int BXE_WRITE_PCICFG ;
 int BXE_WRITE_REG_CMD ;
 int EINVAL ;
 int ENXIO ;
 int M_DEVBUF ;
 int REG_RD (struct bxe_softc*,int ) ;
 int REG_WR (struct bxe_softc*,int ,int ) ;
 int bxe_eeprom_rd_wr (struct bxe_softc*,int *) ;
 int bxe_get_settings (struct bxe_softc*,TYPE_8__*) ;
 int bxe_get_total_regs_len32 (struct bxe_softc*) ;
 int bxe_grc_dump (struct bxe_softc*) ;
 int copyout (int *,int *,int) ;
 int free (int *,int ) ;
 int pci_read_config (int ,int ,int ) ;
 int pci_write_config (int ,int ,int ,int ) ;
 int snprintf (int ,int,char*,...) ;

__attribute__((used)) static int
bxe_eioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
        struct thread *td)
{
    struct bxe_softc *sc;
    int rval = 0;
    device_t pci_dev;
    bxe_grcdump_t *dump = ((void*)0);
    int grc_dump_size;
    bxe_drvinfo_t *drv_infop = ((void*)0);
    bxe_dev_setting_t *dev_p;
    bxe_dev_setting_t dev_set;
    bxe_get_regs_t *reg_p;
    bxe_reg_rdw_t *reg_rdw_p;
    bxe_pcicfg_rdw_t *cfg_rdw_p;
    bxe_perm_mac_addr_t *mac_addr_p;


    if ((sc = (struct bxe_softc *)dev->si_drv1) == ((void*)0))
        return ENXIO;

    pci_dev= sc->dev;

    dump = (bxe_grcdump_t *)data;

    switch(cmd) {

        case 131:
            dump->pci_func = sc->pcie_func;
            dump->grcdump_size =
                (bxe_get_total_regs_len32(sc) * sizeof(uint32_t)) +
                     sizeof(struct dump_header);
            break;

        case 132:

            grc_dump_size = (bxe_get_total_regs_len32(sc) * sizeof(uint32_t)) +
                                sizeof(struct dump_header);
            if ((!sc->trigger_grcdump) || (dump->grcdump == ((void*)0)) ||
                (dump->grcdump_size < grc_dump_size)) {
                rval = EINVAL;
                break;
            }

            if((sc->trigger_grcdump) && (!sc->grcdump_done) &&
                (!sc->grcdump_started)) {
                rval = bxe_grc_dump(sc);
            }

            if((!rval) && (sc->grcdump_done) && (sc->grcdump_started) &&
                (sc->grc_dump != ((void*)0))) {
                dump->grcdump_dwords = grc_dump_size >> 2;
                rval = copyout(sc->grc_dump, dump->grcdump, grc_dump_size);
                free(sc->grc_dump, M_DEVBUF);
                sc->grc_dump = ((void*)0);
                sc->grcdump_started = 0;
                sc->grcdump_done = 0;
            }

            break;

        case 135:
            drv_infop = (bxe_drvinfo_t *)data;
            snprintf(drv_infop->drv_name, BXE_DRV_NAME_LENGTH, "%s", "bxe");
            snprintf(drv_infop->drv_version, BXE_DRV_VERSION_LENGTH, "v:%s",
                BXE_DRIVER_VERSION);
            snprintf(drv_infop->mfw_version, BXE_MFW_VERSION_LENGTH, "%s",
                sc->devinfo.bc_ver_str);
            snprintf(drv_infop->stormfw_version, BXE_STORMFW_VERSION_LENGTH,
                "%s", sc->fw_ver_str);
            drv_infop->eeprom_dump_len = sc->devinfo.flash_size;
            drv_infop->reg_dump_len =
                (bxe_get_total_regs_len32(sc) * sizeof(uint32_t))
                    + sizeof(struct dump_header);
            snprintf(drv_infop->bus_info, BXE_BUS_INFO_LENGTH, "%d:%d:%d",
                sc->pcie_bus, sc->pcie_device, sc->pcie_func);
            break;

        case 136:
            dev_p = (bxe_dev_setting_t *)data;
            bxe_get_settings(sc, &dev_set);
            dev_p->supported = dev_set.supported;
            dev_p->advertising = dev_set.advertising;
            dev_p->speed = dev_set.speed;
            dev_p->duplex = dev_set.duplex;
            dev_p->port = dev_set.port;
            dev_p->phy_address = dev_set.phy_address;
            dev_p->autoneg = dev_set.autoneg;

            break;

        case 133:

            reg_p = (bxe_get_regs_t *)data;
            grc_dump_size = reg_p->reg_buf_len;

            if((!sc->grcdump_done) && (!sc->grcdump_started)) {
                bxe_grc_dump(sc);
            }
            if((sc->grcdump_done) && (sc->grcdump_started) &&
                (sc->grc_dump != ((void*)0))) {
                rval = copyout(sc->grc_dump, reg_p->reg_buf, grc_dump_size);
                free(sc->grc_dump, M_DEVBUF);
                sc->grc_dump = ((void*)0);
                sc->grcdump_started = 0;
                sc->grcdump_done = 0;
            }

            break;

        case 128:
            reg_rdw_p = (bxe_reg_rdw_t *)data;
            if((reg_rdw_p->reg_cmd == BXE_READ_REG_CMD) &&
                (reg_rdw_p->reg_access_type == BXE_REG_ACCESS_DIRECT))
                reg_rdw_p->reg_val = REG_RD(sc, reg_rdw_p->reg_id);

            if((reg_rdw_p->reg_cmd == BXE_WRITE_REG_CMD) &&
                (reg_rdw_p->reg_access_type == BXE_REG_ACCESS_DIRECT))
                REG_WR(sc, reg_rdw_p->reg_id, reg_rdw_p->reg_val);

            break;

        case 129:
            cfg_rdw_p = (bxe_pcicfg_rdw_t *)data;
            if(cfg_rdw_p->cfg_cmd == BXE_READ_PCICFG) {

                cfg_rdw_p->cfg_val = pci_read_config(sc->dev, cfg_rdw_p->cfg_id,
                                         cfg_rdw_p->cfg_width);

            } else if(cfg_rdw_p->cfg_cmd == BXE_WRITE_PCICFG) {
                pci_write_config(sc->dev, cfg_rdw_p->cfg_id, cfg_rdw_p->cfg_val,
                            cfg_rdw_p->cfg_width);
            } else {
                BLOGW(sc, "BXE_RDW_PCICFG ioctl wrong cmd passed\n");
            }
            break;

        case 130:
            mac_addr_p = (bxe_perm_mac_addr_t *)data;
            snprintf(mac_addr_p->mac_addr_str, sizeof(sc->mac_addr_str), "%s",
                sc->mac_addr_str);
            break;

        case 134:
            rval = bxe_eeprom_rd_wr(sc, (bxe_eeprom_t *)data);
            break;


        default:
            break;
    }

    return (rval);
}
