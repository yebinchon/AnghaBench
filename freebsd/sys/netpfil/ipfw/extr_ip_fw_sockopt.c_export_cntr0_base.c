
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; } ;
struct ip_fw_bcounter0 {scalar_t__ timestamp; void* bcnt; void* pcnt; } ;
struct ip_fw {scalar_t__ timestamp; int * cntr; } ;


 void* counter_u64_fetch (int *) ;
 int getboottime (struct timeval*) ;

__attribute__((used)) static void
export_cntr0_base(struct ip_fw *krule, struct ip_fw_bcounter0 *cntr)
{
 struct timeval boottime;

 if (krule->cntr != ((void*)0)) {
  cntr->pcnt = counter_u64_fetch(krule->cntr);
  cntr->bcnt = counter_u64_fetch(krule->cntr + 1);
  cntr->timestamp = krule->timestamp;
 }
 if (cntr->timestamp > 0) {
  getboottime(&boottime);
  cntr->timestamp += boottime.tv_sec;
 }
}
