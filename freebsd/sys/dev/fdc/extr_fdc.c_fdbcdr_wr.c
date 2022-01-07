
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fdc_data {int dummy; } ;


 scalar_t__ FDBCDR ;
 int fdregwr (struct fdc_data*,scalar_t__,int) ;

__attribute__((used)) static void
fdbcdr_wr(struct fdc_data *fdc, int iswrite, uint16_t count)
{
 fdregwr(fdc, FDBCDR, (count - 1) & 0xff);
 fdregwr(fdc, FDBCDR + 1,
     (iswrite ? 0x80 : 0) | (((count - 1) >> 8) & 0x7f));
}
