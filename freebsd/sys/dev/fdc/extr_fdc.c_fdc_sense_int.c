
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int dummy; } ;


 int FD_NOT_VALID ;
 int NE7CMD_SENSEI ;
 int NE7_ST0_IC ;
 int NE7_ST0_IC_IV ;
 int fdc_cmd (struct fdc_data*,int,int ,int,int*) ;
 int fdc_err (struct fdc_data*,char*) ;
 scalar_t__ fdc_in (struct fdc_data*,int*) ;

__attribute__((used)) static int
fdc_sense_int(struct fdc_data *fdc, int *st0p, int *cylp)
{
 int cyl, st0, ret;

 ret = fdc_cmd(fdc, 1, NE7CMD_SENSEI, 1, &st0);
 if (ret) {
  (void)fdc_err(fdc, "sense intr err reading stat reg 0\n");
  return (ret);
 }

 if (st0p)
  *st0p = st0;

 if ((st0 & NE7_ST0_IC) == NE7_ST0_IC_IV) {



  return (FD_NOT_VALID);
 }

 if (fdc_in(fdc, &cyl) < 0)
  return fdc_err(fdc, "can't get cyl num\n");

 if (cylp)
  *cylp = cyl;

 return (0);
}
