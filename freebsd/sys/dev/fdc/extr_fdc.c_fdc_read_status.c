
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int* status; int flags; } ;


 int FDC_STAT_VALID ;
 int fdc_in (struct fdc_data*,int*) ;

__attribute__((used)) static int
fdc_read_status(struct fdc_data *fdc)
{
 int i, ret, status;

 for (i = ret = 0; i < 7; i++) {
  ret = fdc_in(fdc, &status);
  fdc->status[i] = status;
  if (ret != 0)
   break;
 }

 if (ret == 0)
  fdc->flags |= FDC_STAT_VALID;
 else
  fdc->flags &= ~FDC_STAT_VALID;

 return ret;
}
