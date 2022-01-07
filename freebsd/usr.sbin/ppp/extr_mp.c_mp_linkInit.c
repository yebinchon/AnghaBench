
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_link {scalar_t__ bandwidth; scalar_t__ seq; } ;



void
mp_linkInit(struct mp_link *mplink)
{
  mplink->seq = 0;
  mplink->bandwidth = 0;
}
