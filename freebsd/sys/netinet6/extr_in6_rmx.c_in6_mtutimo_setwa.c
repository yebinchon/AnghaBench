
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rib_head {int dummy; } ;
struct mtuex_arg {struct rib_head* rnh; } ;



__attribute__((used)) static void
in6_mtutimo_setwa(struct rib_head *rnh, uint32_t fibum, int af,
    void *_arg)
{
 struct mtuex_arg *arg;

 arg = (struct mtuex_arg *)_arg;

 arg->rnh = rnh;
}
