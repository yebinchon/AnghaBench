
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlist {scalar_t__ n_type; } ;


 int kvm_geterr (int *) ;
 scalar_t__ kvm_nlist (int *,struct nlist*) ;
 int * kvmd ;
 scalar_t__ kvmd_init () ;
 scalar_t__ nlistf ;
 int xo_errx (int,char*,int ,...) ;

__attribute__((used)) static int
kresolve_list(struct nlist *_nl)
{

 if ((kvmd == ((void*)0)) && (kvmd_init() != 0))
  return (-1);

 if (_nl[0].n_type != 0)
  return (0);

 if (kvm_nlist(kvmd, _nl) < 0) {
  if (nlistf)
   xo_errx(1, "%s: kvm_nlist: %s", nlistf,
       kvm_geterr(kvmd));
  else
   xo_errx(1, "kvm_nlist: %s", kvm_geterr(kvmd));
 }

 return (0);
}
