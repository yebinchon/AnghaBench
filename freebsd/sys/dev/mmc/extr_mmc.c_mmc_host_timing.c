
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mmc_bus_timing { ____Placeholder_mmc_bus_timing } mmc_bus_timing ;
typedef int device_t ;


 int HOST_TIMING_CAP (int,int) ;
 int MMC_CAP_HSPEED ;
 int MMC_CAP_MMC_DDR52 ;
 int MMC_CAP_MMC_ENH_STROBE ;
 int MMC_CAP_MMC_HS200 ;
 int MMC_CAP_MMC_HS400 ;
 int MMC_CAP_UHS_DDR50 ;
 int MMC_CAP_UHS_SDR104 ;
 int MMC_CAP_UHS_SDR12 ;
 int MMC_CAP_UHS_SDR25 ;
 int MMC_CAP_UHS_SDR50 ;
 int mmcbr_get_caps (int ) ;

__attribute__((used)) static bool
mmc_host_timing(device_t dev, enum mmc_bus_timing timing)
{
 int host_caps;

 host_caps = mmcbr_get_caps(dev);
 switch (timing) {
 case 133:
  return (1);
 case 138:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_HSPEED)) == (MMC_CAP_HSPEED)) retval = 1; else retval = 0; retval; }));
 case 130:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_UHS_SDR12)) == (MMC_CAP_UHS_SDR12)) retval = 1; else retval = 0; retval; }));
 case 129:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_UHS_SDR25)) == (MMC_CAP_UHS_SDR25)) retval = 1; else retval = 0; retval; }));
 case 132:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_UHS_DDR50)) == (MMC_CAP_UHS_DDR50)) retval = 1; else retval = 0; retval; }));
 case 128:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_UHS_SDR50)) == (MMC_CAP_UHS_SDR50)) retval = 1; else retval = 0; retval; }));
 case 131:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_UHS_SDR104)) == (MMC_CAP_UHS_SDR104)) retval = 1; else retval = 0; retval; }));
 case 137:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_MMC_DDR52)) == (MMC_CAP_MMC_DDR52)) retval = 1; else retval = 0; retval; }));
 case 136:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_MMC_HS200)) == (MMC_CAP_MMC_HS200)) retval = 1; else retval = 0; retval; }));
 case 135:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_MMC_HS400)) == (MMC_CAP_MMC_HS400)) retval = 1; else retval = 0; retval; }));
 case 134:
  return (({ bool retval; if (((host_caps) & (MMC_CAP_MMC_HS400 | MMC_CAP_MMC_ENH_STROBE)) == (MMC_CAP_MMC_HS400 | MMC_CAP_MMC_ENH_STROBE)) retval = 1; else retval = 0; retval; }));

 }



 return (0);
}
