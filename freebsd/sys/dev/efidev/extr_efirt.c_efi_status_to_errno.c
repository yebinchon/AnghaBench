
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
typedef int efi_status ;


 int EDOOFUS ;
 int* efi_status2err ;
 size_t nitems (int*) ;

__attribute__((used)) static int
efi_status_to_errno(efi_status status)
{
 u_long code;

 code = status & 0x3ffffffffffffffful;
 return (code < nitems(efi_status2err) ? efi_status2err[code] : EDOOFUS);
}
