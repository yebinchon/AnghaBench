
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct fdc_data {int dummy; } ;


 int FDDATA ;
 int fdregwr (struct fdc_data*,int ,int ) ;

__attribute__((used)) static void
fddata_wr(struct fdc_data *fdc, u_int8_t v)
{

 fdregwr(fdc, FDDATA, v);
}
