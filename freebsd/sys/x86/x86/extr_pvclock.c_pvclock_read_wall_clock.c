
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvclock_wall_clock {int version; int sec; int nsec; } ;


 int rmb () ;

__attribute__((used)) static void
pvclock_read_wall_clock(struct pvclock_wall_clock *wc, uint32_t *sec,
    uint32_t *nsec)
{
 uint32_t version;

 do {
  version = wc->version;
  rmb();
  *sec = wc->sec;
  *nsec = wc->nsec;
  rmb();
 } while ((wc->version & 1) != 0 || wc->version != version);
}
