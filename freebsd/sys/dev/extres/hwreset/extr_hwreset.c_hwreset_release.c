
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hwreset_t ;


 int M_HWRESET ;
 int free (int ,int ) ;

void
hwreset_release(hwreset_t rst)
{
 free(rst, M_HWRESET);
}
