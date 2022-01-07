
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid3_zone {int sz_inuse; } ;



__attribute__((used)) static void
g_raid3_uma_dtor(void *mem, int size, void *arg)
{
 struct g_raid3_zone *sz = arg;

 sz->sz_inuse--;
}
