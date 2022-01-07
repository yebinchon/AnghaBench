
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int device_t ;
struct TYPE_3__ {int tc_frequency; } ;


 int pci_read_config (int ,int,int) ;
 int piix_freq ;
 TYPE_1__ piix_timecounter ;
 int piix_timecounter_address ;
 int tc_init (TYPE_1__*) ;

__attribute__((used)) static int
piix_attach(device_t dev)
{
 u_int32_t d;

 d = pci_read_config(dev, 0x40, 4);
 piix_timecounter_address = (d & 0xffc0) + 8;
 piix_timecounter.tc_frequency = piix_freq;
 tc_init(&piix_timecounter);
 return (0);
}
