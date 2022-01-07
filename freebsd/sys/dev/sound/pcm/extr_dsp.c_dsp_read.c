
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio {int dummy; } ;
struct cdev {int dummy; } ;


 int dsp_io_ops (struct cdev*,struct uio*) ;

__attribute__((used)) static int
dsp_read(struct cdev *i_dev, struct uio *buf, int flag)
{
 return (dsp_io_ops(i_dev, buf));
}
