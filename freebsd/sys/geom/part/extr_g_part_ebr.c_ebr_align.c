
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct g_part_table {int gpt_sectors; } ;


 int EINVAL ;

__attribute__((used)) static int
ebr_align(struct g_part_table *basetable, uint32_t *start, uint32_t *size)
{
 uint32_t sectors;

 sectors = basetable->gpt_sectors;
 if (*size < 2 * sectors)
  return (EINVAL);
 if (*start % sectors) {
  *size += (*start % sectors) - sectors;
  *start -= (*start % sectors) - sectors;
 }
 if (*size % sectors)
  *size -= (*size % sectors);
 if (*size < 2 * sectors)
  return (EINVAL);
 return (0);
}
