
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int DEVICE_PRINTF (int,int ,char*) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int ipsd_probe(device_t dev)
{
 DEVICE_PRINTF(2,dev, "in probe\n");
 device_set_desc(dev, "Logical Drive");
 return 0;
}
