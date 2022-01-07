
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int VOLUME_MOD_TO_GB(int v)
{
    return ((v) == 64 ? 0xF : ( (v) >> 2 ));
}
