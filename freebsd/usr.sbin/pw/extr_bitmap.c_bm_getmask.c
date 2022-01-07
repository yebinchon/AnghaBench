
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
bm_getmask(int *pos, unsigned char *bmask)
{
 *bmask = (unsigned char) (1 << (*pos % 8));
 *pos /= 8;
}
