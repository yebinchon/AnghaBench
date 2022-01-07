
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {long kn_fflags; } ;



__attribute__((used)) static int
filt_fsevent(struct knote *kn, long hint)
{

 kn->kn_fflags |= hint;
 return (kn->kn_fflags != 0);
}
