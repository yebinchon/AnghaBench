
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;



__attribute__((used)) static inline uintmax_t
bhnd_nv_ummin(uintmax_t a, uintmax_t b)
{

        return (a < b ? a : b);
}
