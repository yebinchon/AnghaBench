
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regulator_range {int min_sel; int max_sel; int min_uvolt; int step_uvolt; } ;


 int ERANGE ;
 int panic (char*) ;

int
regulator_range_sel8_to_volt(struct regulator_range *ranges, int nranges,
   uint8_t sel, int *volt)
{
 struct regulator_range *range;
 int i;

 if (nranges == 0)
  panic("Voltage regulator have zero ranges\n");

 for (i = 0; i < nranges ; i++) {
  range = ranges + i;

  if (!(sel >= range->min_sel &&
        sel <= range->max_sel))
   continue;

  sel -= range->min_sel;

  *volt = range->min_uvolt + sel * range->step_uvolt;
  return (0);
 }

 return (ERANGE);
}
