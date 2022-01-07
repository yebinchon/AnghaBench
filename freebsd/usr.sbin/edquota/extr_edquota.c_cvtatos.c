
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ bcmp (char*,char*,int) ;
 int warnx (char*,char*,char*) ;

int
cvtatos(uint64_t period, char *units, uint64_t *seconds)
{

 if (bcmp(units, "second", 6) == 0)
  *seconds = period;
 else if (bcmp(units, "minute", 6) == 0)
  *seconds = period * 60;
 else if (bcmp(units, "hour", 4) == 0)
  *seconds = period * 60 * 60;
 else if (bcmp(units, "day", 3) == 0)
  *seconds = period * 24 * 60 * 60;
 else {
  warnx("%s: bad units, specify %s\n", units,
      "days, hours, minutes, or seconds");
  return (0);
 }
 return (1);
}
