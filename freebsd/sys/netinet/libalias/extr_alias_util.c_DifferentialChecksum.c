
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;



void
DifferentialChecksum(u_short * cksum, void *newp, void *oldp, int n)
{
 int i;
 int accumulate;
 u_short *new = newp;
 u_short *old = oldp;

 accumulate = *cksum;
 for (i = 0; i < n; i++) {
  accumulate -= *new++;
  accumulate += *old++;
 }

 if (accumulate < 0) {
  accumulate = -accumulate;
  accumulate = (accumulate >> 16) + (accumulate & 0xffff);
  accumulate += accumulate >> 16;
  *cksum = (u_short) ~ accumulate;
 } else {
  accumulate = (accumulate >> 16) + (accumulate & 0xffff);
  accumulate += accumulate >> 16;
  *cksum = (u_short) accumulate;
 }
}
