
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int atrtc_attach (int ) ;

__attribute__((used)) static int
atrtc_isa_attach(device_t dev)
{

 return (atrtc_attach(dev));
}
