
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct camdd_dev_pass {int * dev; } ;
struct camdd_dev_file {int fd; struct camdd_dev* tmp_buf; } ;
struct TYPE_2__ {struct camdd_dev_pass pass; struct camdd_dev_file file; } ;
struct camdd_dev {int dev_type; TYPE_1__ dev_spec; } ;




 int cam_close_device (int *) ;
 int close (int) ;
 int free (struct camdd_dev*) ;

void
camdd_free_dev(struct camdd_dev *dev)
{
 if (dev == ((void*)0))
  return;

 switch (dev->dev_type) {
 case 129: {
  struct camdd_dev_file *file_dev = &dev->dev_spec.file;

  if (file_dev->fd != -1)
   close(file_dev->fd);
  free(file_dev->tmp_buf);
  break;
 }
 case 128: {
  struct camdd_dev_pass *pass_dev = &dev->dev_spec.pass;

  if (pass_dev->dev != ((void*)0))
   cam_close_device(pass_dev->dev);
  break;
 }
 default:
  break;
 }

 free(dev);
}
