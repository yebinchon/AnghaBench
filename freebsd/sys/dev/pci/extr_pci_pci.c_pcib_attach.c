
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pcib_attach_child (int ) ;
 int pcib_attach_common (int ) ;

int
pcib_attach(device_t dev)
{

    pcib_attach_common(dev);
    return (pcib_attach_child(dev));
}
