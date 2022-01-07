
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct fdc_data {int dummy; } ;


 int FDSTS ;
 int fdregrd (struct fdc_data*,int ) ;

__attribute__((used)) static u_int8_t
fdsts_rd(struct fdc_data *fdc)
{

 return fdregrd(fdc, FDSTS);
}
