
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_kring {int nr_hwtail; int rtail; int rcur; int rhead; int nr_hwcur; int name; } ;


 int nm_prinf (char*,char const*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
sync_kloop_kring_dump(const char *title, const struct netmap_kring *kring)
{
 nm_prinf("%s, kring %s, hwcur %d, rhead %d, "
  "rcur %d, rtail %d, hwtail %d",
  title, kring->name, kring->nr_hwcur, kring->rhead,
  kring->rcur, kring->rtail, kring->nr_hwtail);
}
