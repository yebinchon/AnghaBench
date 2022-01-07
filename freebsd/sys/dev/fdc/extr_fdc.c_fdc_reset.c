
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {scalar_t__ fdct; int fdout; int fdc_dev; } ;


 int DELAY (int) ;
 scalar_t__ FDC_ENHANCED ;
 int FDO_FDMAEN ;
 int FDO_FRST ;
 int I8207X_CONFIG ;
 int I8207X_DSR_SR ;
 int I8207X_DUMPREG ;
 int NE7CMD_SPECIFY ;
 int debugflags ;
 int device_printf (int ,char*) ;
 scalar_t__ fdc_cmd (struct fdc_data*,int,int ,int,...) ;
 int fddsr_wr (struct fdc_data*,int ) ;
 int fdout_wr (struct fdc_data*,int) ;
 int fifo_threshold ;
 int printf (char*,...) ;
 int spec1 ;
 int spec2 ;

__attribute__((used)) static void
fdc_reset(struct fdc_data *fdc)
{
 int i, r[10];

 if (fdc->fdct == FDC_ENHANCED) {

  fddsr_wr(fdc, I8207X_DSR_SR);
 } else {

  fdout_wr(fdc, fdc->fdout & ~(FDO_FRST|FDO_FDMAEN));
  DELAY(100);

  fdout_wr(fdc, fdc->fdout & ~FDO_FDMAEN);
 }
 DELAY(100);
 fdout_wr(fdc, fdc->fdout);


 if (fdc_cmd(fdc, 3, NE7CMD_SPECIFY, spec1, spec2, 0))
  device_printf(fdc->fdc_dev, " SPECIFY failed in reset\n");

 if (fdc->fdct == FDC_ENHANCED) {
  if (fdc_cmd(fdc, 4,
      I8207X_CONFIG,
      0,


      0x10 |
      (fifo_threshold - 1),
      0x00,
      0))
   device_printf(fdc->fdc_dev,
       " CONFIGURE failed in reset\n");
  if (debugflags & 1) {
   if (fdc_cmd(fdc, 1,
       I8207X_DUMPREG,
       10, &r[0], &r[1], &r[2], &r[3], &r[4],
       &r[5], &r[6], &r[7], &r[8], &r[9]))
    device_printf(fdc->fdc_dev,
        " DUMPREG failed in reset\n");
   for (i = 0; i < 10; i++)
    printf(" %02x", r[i]);
   printf("\n");
  }
 }
}
