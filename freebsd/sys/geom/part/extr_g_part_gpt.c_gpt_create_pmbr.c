
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {int mediasize; int sectorsize; } ;
struct g_part_gpt_table {scalar_t__ mbr; } ;


 int DOSMAGIC ;
 scalar_t__ DOSMAGICOFFSET ;
 scalar_t__ DOSPARTOFF ;
 int DOSPARTSIZE ;
 int MIN (int,int ) ;
 int NDOSPART ;
 int UINT32_MAX ;
 int bzero (scalar_t__,int) ;
 int gpt_write_mbr_entry (scalar_t__,int ,int,int,int ) ;
 int le16enc (scalar_t__,int ) ;

__attribute__((used)) static void
gpt_create_pmbr(struct g_part_gpt_table *table, struct g_provider *pp)
{

 bzero(table->mbr + DOSPARTOFF, DOSPARTSIZE * NDOSPART);
 gpt_write_mbr_entry(table->mbr, 0, 0xee, 1,
     MIN(pp->mediasize / pp->sectorsize - 1, UINT32_MAX));
 le16enc(table->mbr + DOSMAGICOFFSET, DOSMAGIC);
}
