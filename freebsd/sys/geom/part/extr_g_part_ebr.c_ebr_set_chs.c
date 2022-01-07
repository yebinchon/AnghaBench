
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
struct g_part_table {int gpt_sectors; int gpt_heads; } ;



__attribute__((used)) static void
ebr_set_chs(struct g_part_table *table, uint32_t lba, u_char *cylp, u_char *hdp,
    u_char *secp)
{
 uint32_t cyl, hd, sec;

 sec = lba % table->gpt_sectors + 1;
 lba /= table->gpt_sectors;
 hd = lba % table->gpt_heads;
 lba /= table->gpt_heads;
 cyl = lba;
 if (cyl > 1023)
  sec = hd = cyl = ~0;

 *cylp = cyl & 0xff;
 *hdp = hd & 0xff;
 *secp = (sec & 0x3f) | ((cyl >> 2) & 0xc0);
}
