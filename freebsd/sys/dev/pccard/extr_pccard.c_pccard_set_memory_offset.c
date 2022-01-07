
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int CARD_SET_MEMORY_OFFSET (int ,int ,int,int ,int *) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pccard_set_memory_offset(device_t dev, device_t child, int rid,
    uint32_t offset, uint32_t *deltap)

{
 return (CARD_SET_MEMORY_OFFSET(device_get_parent(dev), child, rid,
     offset, deltap));
}
