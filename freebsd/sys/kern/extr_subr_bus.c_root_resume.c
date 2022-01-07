
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bus_generic_resume (int ) ;
 int devctl_notify (char*,char*,char*,int *) ;

__attribute__((used)) static int
root_resume(device_t dev)
{
 int error;

 error = bus_generic_resume(dev);
 if (error == 0)
  devctl_notify("kern", "power", "resume", ((void*)0));
 return (error);
}
