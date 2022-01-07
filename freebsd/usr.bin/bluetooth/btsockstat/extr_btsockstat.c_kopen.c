
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kvm_t ;
struct TYPE_3__ {scalar_t__ n_type; } ;


 int O_RDONLY ;
 int _POSIX2_LINE_MAX ;
 int err (int,char*) ;
 int getgid () ;
 int kvm_close (int *) ;
 int kvm_geterr (int *) ;
 scalar_t__ kvm_nlist (int *,TYPE_1__*) ;
 int * kvm_openfiles (int *,char const*,int *,int ,char*) ;
 TYPE_1__* nl ;
 scalar_t__ setgid (int ) ;
 int warnx (char*,...) ;

__attribute__((used)) static kvm_t *
kopen(char const *memf)
{
 kvm_t *kvmd = ((void*)0);
 char errbuf[_POSIX2_LINE_MAX];

 kvmd = kvm_openfiles(((void*)0), memf, ((void*)0), O_RDONLY, errbuf);
 if (setgid(getgid()) != 0)
  err(1, "setgid");
 if (kvmd == ((void*)0)) {
  warnx("kvm_openfiles: %s", errbuf);
  return (((void*)0));
 }

 if (kvm_nlist(kvmd, nl) < 0) {
  warnx("kvm_nlist: %s", kvm_geterr(kvmd));
  goto fail;
 }

 if (nl[0].n_type == 0) {
  warnx("kvm_nlist: no namelist");
  goto fail;
 }

 return (kvmd);
fail:
 kvm_close(kvmd);

 return (((void*)0));
}
