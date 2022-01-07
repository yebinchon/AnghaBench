
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdc_data {TYPE_1__* fd; } ;
struct TYPE_2__ {int fdsu; } ;


 int NE7CMD_SENSED ;
 scalar_t__ fdc_cmd (struct fdc_data*,int,int ,int ,int,int*) ;
 int fdc_err (struct fdc_data*,char*) ;

__attribute__((used)) static int
fdc_sense_drive(struct fdc_data *fdc, int *st3p)
{
 int st3;

 if (fdc_cmd(fdc, 2, NE7CMD_SENSED, fdc->fd->fdsu, 1, &st3))
  return (fdc_err(fdc, "Sense Drive Status failed\n"));
 if (st3p)
  *st3p = st3;
 return (0);
}
