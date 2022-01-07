
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
cyapa_fuzz(int delta, int *fuzzp)
{
 int fuzz;

 fuzz = *fuzzp;
 if (fuzz >= 0 && delta < 0) {
  ++delta;
  --fuzz;
 } else if (fuzz <= 0 && delta > 0) {
  --delta;
  ++fuzz;
 }
 *fuzzp = fuzz;

 return (delta);
}
