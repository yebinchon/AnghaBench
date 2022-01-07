
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ rock_ridge_enabled; } ;
typedef TYPE_2__ iso9660_disk ;
struct TYPE_8__ {scalar_t__ su_tail_size; scalar_t__ susp_entry_size; TYPE_1__* isoDirRecord; } ;
typedef TYPE_3__ cd9660node ;
struct TYPE_6__ {int* length; } ;


 int assert (int) ;

int
cd9660_compute_record_size(iso9660_disk *diskStructure, cd9660node *node)
{
 int size = node->isoDirRecord->length[0];

 if (diskStructure->rock_ridge_enabled)
  size += node->susp_entry_size;
 size += node->su_tail_size;
 size += size & 1;
 assert(size <= 254);
 return size;
}
