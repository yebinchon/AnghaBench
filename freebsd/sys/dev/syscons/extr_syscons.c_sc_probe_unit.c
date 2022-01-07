
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int FALSE ;
 char* SC_DRIVER_NAME ;
 int VTY_SC ;
 scalar_t__ bootverbose ;
 int printf (char*,char*,int) ;
 int sckbdprobe (int,int,int ) ;
 int scvidprobe (int,int,int ) ;
 int vty_enabled (int ) ;

int
sc_probe_unit(int unit, int flags)
{
    if (!vty_enabled(VTY_SC))
        return ENXIO;
    if (!scvidprobe(unit, flags, FALSE)) {
 if (bootverbose)
     printf("%s%d: no video adapter found.\n", SC_DRIVER_NAME, unit);
 return ENXIO;
    }


    sckbdprobe(unit, flags, FALSE);

    return 0;
}
