
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdc_data {int fdout; } ;
struct fd_data {int flags; int fdsu; int toffhandle; struct fdc_data* fdc; } ;


 int FDO_MOEN0 ;
 int FD_MOTOR ;
 int FD_MOTORWAIT ;
 int callout_reset (int *,int ,int ,struct fd_data*) ;
 int callout_stop (int *) ;
 int fd_turnon ;
 int fdout_wr (struct fdc_data*,int) ;
 int hz ;

__attribute__((used)) static void
fd_motor(struct fd_data *fd, int turnon)
{
 struct fdc_data *fdc;

 fdc = fd->fdc;



 if (turnon) {
  fd->flags |= FD_MOTORWAIT;
  fdc->fdout |= (FDO_MOEN0 << fd->fdsu);
  callout_reset(&fd->toffhandle, hz, fd_turnon, fd);
 } else {
  callout_stop(&fd->toffhandle);
  fd->flags &= ~(FD_MOTOR|FD_MOTORWAIT);
  fdc->fdout &= ~(FDO_MOEN0 << fd->fdsu);
 }
 fdout_wr(fdc, fdc->fdout);
}
