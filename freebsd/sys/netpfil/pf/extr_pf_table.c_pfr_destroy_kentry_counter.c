
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_kcounters {int ** pfrkc_bytes; int ** pfrkc_packets; } ;


 int counter_u64_free (int ) ;

__attribute__((used)) static void
pfr_destroy_kentry_counter(struct pfr_kcounters *kc, int pfr_dir, int pfr_op)
{
 counter_u64_free(kc->pfrkc_packets[pfr_dir][pfr_op]);
 counter_u64_free(kc->pfrkc_bytes[pfr_dir][pfr_op]);
}
