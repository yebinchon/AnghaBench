
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cset {int cs_invert; int cs_havecache; } ;



void
cset_invert(struct cset *cs)
{

 cs->cs_invert ^= 1;
 cs->cs_havecache = 0;
}
