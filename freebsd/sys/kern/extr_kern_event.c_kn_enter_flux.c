
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_influx; int kn_kq; } ;


 scalar_t__ INT_MAX ;
 int KQ_OWNED (int ) ;
 int MPASS (int) ;

__attribute__((used)) static void
kn_enter_flux(struct knote *kn)
{

 KQ_OWNED(kn->kn_kq);
 MPASS(kn->kn_influx < INT_MAX);
 kn->kn_influx++;
}
