
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hcb_p ;


 int sym_reset_scsi_bus (int ,int) ;

__attribute__((used)) static void sym_start_reset(hcb_p np)
{
 (void) sym_reset_scsi_bus(np, 1);
}
