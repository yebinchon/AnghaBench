
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
typedef TYPE_1__* hcb_p ;
struct TYPE_4__ {int scsi_mode; int path; } ;


 int INB (int ) ;
 int SMODE ;
 int nc_stest4 ;
 int printf (char*,char*,char*) ;
 int sym_init (TYPE_1__*,int) ;
 char* sym_scsi_bus_mode (int) ;
 int xpt_print_path (int ) ;

__attribute__((used)) static void sym_int_sbmc (hcb_p np)
{
 u_char scsi_mode = INB (nc_stest4) & SMODE;




 xpt_print_path(np->path);
 printf("SCSI BUS mode change from %s to %s.\n",
  sym_scsi_bus_mode(np->scsi_mode), sym_scsi_bus_mode(scsi_mode));





 sym_init (np, 2);
}
