
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef void* uint16_t ;
struct TYPE_2__ {void** size; } ;
struct lio_sg_entry {TYPE_1__ u; } ;



__attribute__((used)) static inline void
lio_add_sg_size(struct lio_sg_entry *sg_entry, uint16_t size, uint32_t pos)
{


 sg_entry->u.size[pos] = size;



}
