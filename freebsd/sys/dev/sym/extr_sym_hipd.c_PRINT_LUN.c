
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hcb_p ;


 int printf (char*,char*,int,int) ;
 char* sym_name (int ) ;

__attribute__((used)) static void PRINT_LUN(hcb_p np, int target, int lun)
{
 printf ("%s:%d:%d:", sym_name(np), target, lun);
}
