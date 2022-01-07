
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
ipdn_bound_var(int *v, int dflt, int lo, int hi, const char *msg)
{
 (void)msg;
        if (*v < lo) {
                *v = dflt;
        } else if (*v > hi) {
                *v = hi;
        }
        return *v;
}
