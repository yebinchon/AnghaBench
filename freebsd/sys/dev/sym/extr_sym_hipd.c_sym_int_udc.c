
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hcb_p ;


 int HS_UNEXPECTED ;
 int printf (char*,char*) ;
 char* sym_name (int ) ;
 int sym_recover_scsi_int (int ,int ) ;

__attribute__((used)) static void sym_int_udc (hcb_p np)
{
 printf ("%s: unexpected disconnect\n", sym_name(np));
 sym_recover_scsi_int(np, HS_UNEXPECTED);
}
