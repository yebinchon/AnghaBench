
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct bps {int bytes; } ;



void
do_bps(const char *desc, struct bps *bps, uint32_t len)
{
 bps->bytes += len;
}
