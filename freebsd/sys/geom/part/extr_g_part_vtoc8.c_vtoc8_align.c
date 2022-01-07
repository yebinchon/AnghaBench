
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct g_part_vtoc8_table {int secpercyl; } ;


 int EINVAL ;

__attribute__((used)) static int
vtoc8_align(struct g_part_vtoc8_table *table, uint64_t *start, uint64_t *size)
{

 if (*size < table->secpercyl)
  return (EINVAL);
 if (start != ((void*)0) && (*start % table->secpercyl)) {
  *size += (*start % table->secpercyl) - table->secpercyl;
  *start -= (*start % table->secpercyl) - table->secpercyl;
 }
 if (*size % table->secpercyl)
  *size -= (*size % table->secpercyl);
 if (*size < table->secpercyl)
  return (EINVAL);
 return (0);
}
