
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int dummy; } ;


 int DELAY (int) ;
 int FDSTS_TIMEOUT ;
 int NE7_DIO ;
 int NE7_RQM ;
 scalar_t__ bootverbose ;
 int fdc_err (struct fdc_data*,char*) ;
 int fddata_wr (struct fdc_data*,int) ;
 int fdsts_rd (struct fdc_data*) ;

__attribute__((used)) static int
fdc_out(struct fdc_data *fdc, int x)
{
 int i, j, step;

 step = 1;
 for (j = 0; j < FDSTS_TIMEOUT; j += step) {
         i = fdsts_rd(fdc) & (NE7_DIO | NE7_RQM);
         if (i == NE7_RQM) {
   fddata_wr(fdc, x);
   return (0);
  }
  if (i == (NE7_DIO|NE7_RQM))
   return (fdc_err(fdc, "ready for input in output\n"));
  step += step;
  DELAY(step);
 }
 return (fdc_err(fdc, bootverbose? "output ready timeout\n": 0));
}
