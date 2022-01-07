
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* write ) (int) ;} ;


 int ENOSYS ;
 TYPE_1__* format ;
 int stub1 (int) ;

int
format_write(int fd)
{
 int error;

 if (format == ((void*)0))
  return (ENOSYS);
 error = format->write(fd);
 return (error);
}
