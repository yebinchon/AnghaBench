
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int pccard_detach_card (int ) ;

__attribute__((used)) static int
pccard_suspend(device_t self)
{
 pccard_detach_card(self);
 return (0);
}
