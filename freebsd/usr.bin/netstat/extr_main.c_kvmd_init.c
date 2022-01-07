
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int _POSIX2_LINE_MAX ;
 int getgid () ;
 int * kvm_openfiles (int ,int ,int *,int ,char*) ;
 int * kvmd ;
 int memf ;
 int nlistf ;
 scalar_t__ setgid (int ) ;
 int xo_err (int,char*) ;
 int xo_warnx (char*,char*) ;

__attribute__((used)) static int
kvmd_init(void)
{
 char errbuf[_POSIX2_LINE_MAX];

 if (kvmd != ((void*)0))
  return (0);

 kvmd = kvm_openfiles(nlistf, memf, ((void*)0), O_RDONLY, errbuf);
 if (setgid(getgid()) != 0)
  xo_err(-1, "setgid");

 if (kvmd == ((void*)0)) {
  xo_warnx("kvm not available: %s", errbuf);
  return (-1);
 }

 return (0);
}
