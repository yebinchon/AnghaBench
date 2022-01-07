
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int debug_called (int) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
mlxd_probe(device_t dev)
{

    debug_called(1);

    device_set_desc(dev, "Mylex System Drive");
    return (0);
}
