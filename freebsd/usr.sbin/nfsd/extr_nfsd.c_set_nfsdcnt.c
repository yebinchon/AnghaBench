
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEFNFSDCNT ;
 int MAXNFSDCNT ;
 int nfsdcnt ;
 int nfsdcnt_set ;
 int warnx (char*,int,int) ;

__attribute__((used)) static void
set_nfsdcnt(int proposed)
{

 if (proposed < 1) {
  warnx("nfsd count too low %d; reset to %d", proposed,
      DEFNFSDCNT);
  nfsdcnt = DEFNFSDCNT;
 } else if (proposed > MAXNFSDCNT) {
  warnx("nfsd count too high %d; truncated to %d", proposed,
      MAXNFSDCNT);
  nfsdcnt = MAXNFSDCNT;
 } else
  nfsdcnt = proposed;
 nfsdcnt_set = 1;
}
