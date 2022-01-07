
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int32_t ;
struct randomtab {scalar_t__ ru_counter; scalar_t__ ru_max; scalar_t__ ru_reseed; int ru_x; int ru_m; int ru_seed; int ru_msb; int ru_n; scalar_t__ ru_seed2; int ru_g; scalar_t__ ru_b; scalar_t__ ru_a; } ;


 int arc4random () ;
 int initid (struct randomtab*) ;
 int pmod (int ,scalar_t__,int ) ;
 scalar_t__ time_uptime ;

__attribute__((used)) static u_int32_t
randomid(struct randomtab *p)
{
 int i, n;

 if (p->ru_counter >= p->ru_max || time_uptime > p->ru_reseed)
  initid(p);


 n = arc4random() & 0x3;
 if (p->ru_counter + n >= p->ru_max)
  initid(p);

 for (i = 0; i <= n; i++) {

  p->ru_x = (u_int32_t)((u_int64_t)p->ru_a * p->ru_x + p->ru_b) % p->ru_m;
 }

 p->ru_counter += i;

 return (p->ru_seed ^ pmod(p->ru_g, p->ru_seed2 + p->ru_x, p->ru_n)) |
     p->ru_msb;
}
