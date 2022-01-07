
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int io_rid; int conf_rid; int drq1_rid; int drq2_rid; int password; int passwdreg; int optibase; int bd_flags; int bd_id; scalar_t__ irq_rid; } ;
typedef int device_t ;


 int BD_F_924PNP ;
 int BD_F_MSS_OFFSET ;
 int ENXIO ;
 int MD_CS423X ;
 int MD_CS42XX ;
 int MD_GUSPNP ;
 int MD_OPTI924 ;
 int MD_OPTI925 ;
 int MD_OPTI931 ;
 int MD_VIVO ;
 int MD_YM0020 ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int azt2320_mss_mode (struct mss_info*,int ) ;
 int free (struct mss_info*,int ) ;
 int isa_get_logicalid (int ) ;
 struct mss_info* malloc (int,int ,int) ;
 int mss_doattach (int ,struct mss_info*) ;
 int opti_init (int ,struct mss_info*) ;

__attribute__((used)) static int
pnpmss_attach(device_t dev)
{
 struct mss_info *mss;

 mss = malloc(sizeof(*mss), M_DEVBUF, M_WAITOK | M_ZERO);
 mss->io_rid = 0;
 mss->conf_rid = -1;
 mss->irq_rid = 0;
 mss->drq1_rid = 0;
 mss->drq2_rid = 1;
 mss->bd_id = MD_CS42XX;

 switch (isa_get_logicalid(dev)) {
 case 0x0000630e:
 case 0x0001630e:
     mss->bd_flags |= BD_F_MSS_OFFSET;
     mss->bd_id = MD_CS423X;
     break;

 case 0x2100a865:
     mss->io_rid = 1;
     mss->conf_rid = 4;
     mss->bd_id = MD_YM0020;
     break;

 case 0x1110d315:
     mss->io_rid = 1;
     mss->bd_id = MD_VIVO;
     break;

 case 0x1093143e:
            mss->bd_flags |= BD_F_MSS_OFFSET;
         mss->conf_rid = 3;
            mss->bd_id = MD_OPTI931;
     break;

 case 0x5092143e:
            mss->io_rid = 1;
            mss->conf_rid = 3;
     mss->bd_id = MD_OPTI925;
     break;

 case 0x0000143e:
     mss->password = 0xe5;
     mss->passwdreg = 3;
     mss->optibase = 0xf0c;
     mss->io_rid = 2;
     mss->conf_rid = 3;
     mss->bd_id = MD_OPTI924;
     mss->bd_flags |= BD_F_924PNP;
     if(opti_init(dev, mss) != 0) {
      free(mss, M_DEVBUF);
      return ENXIO;
     }
     break;

 case 0x1022b839:
     mss->io_rid = 1;
     break;

 case 0x01005407:

     if (azt2320_mss_mode(mss, dev) == -1) {
      free(mss, M_DEVBUF);
      return ENXIO;
     }

     mss->bd_flags |= BD_F_MSS_OFFSET;
     mss->io_rid = 2;
     break;
 case 0x01000000:
     mss->drq2_rid = -1;
            break;


        default:
     mss->bd_flags |= BD_F_MSS_OFFSET;
     break;
 }
     return mss_doattach(dev, mss);
}
