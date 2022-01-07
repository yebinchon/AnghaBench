
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct cputab {int version; int features2; int features; } ;


 int cpu_features ;
 int cpu_features2 ;
 struct cputab const* cput ;
 int mfpvr () ;
 struct cputab* models ;

void
cpu_feature_setup()
{
 u_int pvr;
 uint16_t vers;
 const struct cputab *cp;

 pvr = mfpvr();
 vers = pvr >> 16;
 for (cp = models; cp->version != 0; cp++) {
  if (cp->version == vers)
   break;
 }

 cput = cp;
 cpu_features |= cp->features;
 cpu_features2 |= cp->features2;
}
