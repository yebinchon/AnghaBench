
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void ct_compute_clock (long hz, long baud, int *txbr, int *tmc)
{
 if (baud < 100)
  baud = 100;
 *txbr = 0;
 if (4*baud > 3*hz)
  *tmc = 1;
 else {
  while (((hz / baud) >> ++*txbr) > 256)
   continue;
  *tmc = (((2 * hz / baud) >> *txbr) + 1) / 2;
 }
}
