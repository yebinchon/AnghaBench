
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd_data {TYPE_1__* fdc; } ;
struct TYPE_2__ {int fdc_mtx; } ;


 int MA_OWNED ;
 int fd_motor (struct fd_data*,int ) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
fd_turnoff(void *xfd)
{
 struct fd_data *fd = xfd;

 mtx_assert(&fd->fdc->fdc_mtx, MA_OWNED);
 fd_motor(fd, 0);
}
