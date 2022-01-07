
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lba_t ;
struct TYPE_2__ {int (* resize ) (int ) ;} ;


 int ENOSYS ;
 TYPE_1__* format ;
 int stub1 (int ) ;

int
format_resize(lba_t end)
{

 if (format == ((void*)0))
  return (ENOSYS);
 return (format->resize(end));
}
