
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {TYPE_1__* part; } ;
struct g_part_vtoc8_table {TYPE_2__ vtoc; } ;
struct g_part_table {int dummy; } ;
struct g_part_entry {int gpe_index; } ;
struct TYPE_3__ {int tag; } ;


 scalar_t__ VTOC_TAG_FREEBSD_SWAP ;
 scalar_t__ VTOC_TAG_SWAP ;
 scalar_t__ be16dec (int *) ;

__attribute__((used)) static int
g_part_vtoc8_dumpto(struct g_part_table *basetable,
    struct g_part_entry *entry)
{
 struct g_part_vtoc8_table *table;
 uint16_t tag;





 table = (struct g_part_vtoc8_table *)basetable;
 tag = be16dec(&table->vtoc.part[entry->gpe_index - 1].tag);
 return ((tag == 0 || tag == VTOC_TAG_FREEBSD_SWAP ||
     tag == VTOC_TAG_SWAP) ? 1 : 0);
}
