
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_influx; int kn_kq; } ;


 int KQ_OWNED (int ) ;
 int MPASS (int) ;

__attribute__((used)) static bool
kn_leave_flux(struct knote *kn)
{

 KQ_OWNED(kn->kn_kq);
 MPASS(kn->kn_influx > 0);
 kn->kn_influx--;
 return (kn->kn_influx == 0);
}
