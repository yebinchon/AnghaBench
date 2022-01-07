
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_influx; } ;



__attribute__((used)) static bool
kn_in_flux(struct knote *kn)
{

 return (kn->kn_influx > 0);
}
