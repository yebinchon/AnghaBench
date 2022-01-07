
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct bcm_nvram_iocfe {int io; } ;
typedef int bhnd_nvram_data_class ;


 int BCM_ERR (char*,char*,int) ;
 int CFE_ERR_DEVNOTFOUND ;
 int ENODEV ;
 int bcm_nvram_iocfe_init (struct bcm_nvram_iocfe*,char*) ;
 int bhnd_nvram_data_probe (int *,int *) ;
 int bhnd_nvram_io_free (int *) ;
 int cfe_getdevinfo (char*) ;
 size_t nitems (void**) ;
 void** nvram_cfe_devs ;
 void** nvram_cfe_fmts ;

int
bcm_nvram_find_cfedev(struct bcm_nvram_iocfe *iocfe,
    bhnd_nvram_data_class **cls)
{
 char *dname;
 int devinfo;
 int error, result;

 for (u_int i = 0; i < nitems(nvram_cfe_fmts); i++) {
  *cls = nvram_cfe_fmts[i];

  for (u_int j = 0; j < nitems(nvram_cfe_devs); j++) {
   dname = nvram_cfe_devs[j];


   if ((devinfo = cfe_getdevinfo(dname)) < 0) {
    if (devinfo != CFE_ERR_DEVNOTFOUND) {
     BCM_ERR("cfe_getdevinfo(%s) failed: "
         "%d\n", dname, devinfo);
    }

    continue;
   }


   if ((error = bcm_nvram_iocfe_init(iocfe, dname)))
    continue;


   result = bhnd_nvram_data_probe(*cls, &iocfe->io);
   if (result <= 0) {

    return (0);
   }


   bhnd_nvram_io_free(&iocfe->io);
  }
 }

 return (ENODEV);
}
