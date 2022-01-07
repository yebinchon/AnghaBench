
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int ) ;
 int filemon_dev ;
 int filemon_wrapper_deinstall () ;

__attribute__((used)) static int
filemon_unload(void)
{

 destroy_dev(filemon_dev);
 filemon_wrapper_deinstall();

 return (0);
}
