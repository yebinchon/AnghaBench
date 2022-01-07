
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {scalar_t__ fdc_errs; int fdc_dev; } ;


 scalar_t__ FDC_ERRMAX ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
fdc_err(struct fdc_data *fdc, const char *s)
{
 fdc->fdc_errs++;
 if (s) {
  if (fdc->fdc_errs < FDC_ERRMAX)
   device_printf(fdc->fdc_dev, "%s", s);
  else if (fdc->fdc_errs == FDC_ERRMAX)
   device_printf(fdc->fdc_dev, "too many errors, not "
          "logging any more\n");
 }

 return (1);
}
