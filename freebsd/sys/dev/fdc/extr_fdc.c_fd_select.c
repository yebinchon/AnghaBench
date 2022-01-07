
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int fdout; } ;
struct fd_data {int fdsu; struct fdc_data* fdc; } ;


 int FDO_FDMAEN ;
 int FDO_FDSEL ;
 int FDO_FRST ;
 int fdout_wr (struct fdc_data*,int) ;

__attribute__((used)) static void
fd_select(struct fd_data *fd)
{
 struct fdc_data *fdc;


 fdc = fd->fdc;
 fdc->fdout &= ~FDO_FDSEL;
 fdc->fdout |= FDO_FDMAEN | FDO_FRST | fd->fdsu;
 fdout_wr(fdc, fdc->fdout);
}
