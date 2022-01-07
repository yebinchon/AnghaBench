
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ISA_PNP_PROBE (int ,int ,int ) ;
 int atdma_ids ;
 int device_get_parent (int ) ;
 int device_quiet (int ) ;

__attribute__((used)) static int
atdma_probe(device_t dev)
{
 int result;

 if ((result = ISA_PNP_PROBE(device_get_parent(dev), dev, atdma_ids)) <= 0)
  device_quiet(dev);
 return(result);
}
