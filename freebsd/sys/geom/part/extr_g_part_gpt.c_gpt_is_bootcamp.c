
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct g_part_gpt_table {int* mbr; } ;


 int DOSPARTOFF ;
 int DOSPARTSIZE ;
 int le32dec (int*) ;
 int printf (char*,char const*) ;

__attribute__((used)) static int
gpt_is_bootcamp(struct g_part_gpt_table *table, const char *provname)
{
 uint8_t *p;

 p = table->mbr + DOSPARTOFF;
 if (p[4] != 0xee || le32dec(p + 8) != 1)
  return (0);

 p += DOSPARTSIZE;
 if (p[4] != 0xaf)
  return (0);

 printf("GEOM: %s: enabling Boot Camp\n", provname);
 return (1);
}
