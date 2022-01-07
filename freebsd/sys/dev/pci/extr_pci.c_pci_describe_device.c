
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 scalar_t__ pci_describe_parse_line (char**,int*,int*,char**) ;
 int pci_get_device (int ) ;
 int pci_get_vendor (int ) ;
 char* pci_vendordata ;
 int snprintf (char*,int,char*,int) ;
 int sprintf (char*,char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
pci_describe_device(device_t dev)
{
 int vendor, device;
 char *desc, *vp, *dp, *line;

 desc = vp = dp = ((void*)0);




 if (pci_vendordata == ((void*)0))
  goto out;




 line = pci_vendordata;
 if ((vp = malloc(80, M_DEVBUF, M_NOWAIT)) == ((void*)0))
  goto out;
 for (;;) {
  if (pci_describe_parse_line(&line, &vendor, &device, &vp))
   goto out;
  if (vendor == pci_get_vendor(dev))
   break;
 }
 if ((dp = malloc(80, M_DEVBUF, M_NOWAIT)) == ((void*)0))
  goto out;
 for (;;) {
  if (pci_describe_parse_line(&line, &vendor, &device, &dp)) {
   *dp = 0;
   break;
  }
  if (vendor != -1) {
   *dp = 0;
   break;
  }
  if (device == pci_get_device(dev))
   break;
 }
 if (dp[0] == '\0')
  snprintf(dp, 80, "0x%x", pci_get_device(dev));
 if ((desc = malloc(strlen(vp) + strlen(dp) + 3, M_DEVBUF, M_NOWAIT)) !=
     ((void*)0))
  sprintf(desc, "%s, %s", vp, dp);
out:
 if (vp != ((void*)0))
  free(vp, M_DEVBUF);
 if (dp != ((void*)0))
  free(dp, M_DEVBUF);
 return(desc);
}
