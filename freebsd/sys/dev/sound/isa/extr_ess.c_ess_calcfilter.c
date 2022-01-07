
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;



__attribute__((used)) static u_int8_t
ess_calcfilter(int spd)
{
 int cutoff;



 cutoff = (spd * 9 * 82) / 20;
 return (256 - (7160000 / cutoff));
}
