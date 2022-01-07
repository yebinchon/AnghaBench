
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_board_info {int board_flags3; int board_flags2; int board_flags; int board_srom_rev; int board_rev; int board_devid; int board_type; int board_vendor; } ;
typedef int device_t ;


 int BOARDFLAGS ;
 int BOARDFLAGS2 ;
 int BOARDFLAGS3 ;
 int BOARDREV ;
 int BOARDTYPE ;
 int BOARDVENDOR ;
 int DEVID ;
 int OPT_BHND_GV (int ,int ,int ) ;
 int REQ_BHND_GV (int ,int ) ;
 int SROMREV ;

int
bhnd_bus_generic_read_board_info(device_t dev, device_t child,
    struct bhnd_board_info *info)
{
 int error;

 OPT_BHND_GV(info->board_vendor, BOARDVENDOR, 0);
 OPT_BHND_GV(info->board_type, BOARDTYPE, 0);
 OPT_BHND_GV(info->board_devid, DEVID, 0);
 REQ_BHND_GV(info->board_rev, BOARDREV);
 OPT_BHND_GV(info->board_srom_rev,SROMREV, 0);


 REQ_BHND_GV(info->board_flags, BOARDFLAGS);
 OPT_BHND_GV(info->board_flags2, BOARDFLAGS2, 0);
 OPT_BHND_GV(info->board_flags3, BOARDFLAGS3, 0);

 return (0);
}
