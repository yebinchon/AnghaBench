
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int volume_mod_to_gb(int v)
{
    return (v == 64) ? 0xF : (v >> 2);
}
