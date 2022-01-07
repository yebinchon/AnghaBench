
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct fdc_data {int dummy; } ;


 int FDCTL ;
 int fdregwr (struct fdc_data*,int ,int ) ;

__attribute__((used)) static void
fdctl_wr(struct fdc_data *fdc, u_int8_t v)
{

 fdregwr(fdc, FDCTL, v);
}
