
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int kn_fflags; int kn_hookid; int * kn_hook; } ;


 int NOTE_TRIGGER ;

__attribute__((used)) static int
filt_userattach(struct knote *kn)
{




 kn->kn_hook = ((void*)0);
 if (kn->kn_fflags & NOTE_TRIGGER)
  kn->kn_hookid = 1;
 else
  kn->kn_hookid = 0;
 return (0);
}
