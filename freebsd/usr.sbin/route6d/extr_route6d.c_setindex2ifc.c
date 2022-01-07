
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifc {int dummy; } ;


 int fatal (char*) ;
 struct ifc** index2ifc ;
 scalar_t__ malloc (int) ;
 int memset (struct ifc**,int ,int) ;
 int nindex2ifc ;
 scalar_t__ realloc (struct ifc**,int) ;

__attribute__((used)) static void
setindex2ifc(int idx, struct ifc *ifcp)
{
 int n, nsize;
 struct ifc **p;

 if (!index2ifc) {
  nindex2ifc = 5;
  index2ifc = (struct ifc **)
   malloc(sizeof(*index2ifc) * nindex2ifc);
  if (index2ifc == ((void*)0)) {
   fatal("malloc");

  }
  memset(index2ifc, 0, sizeof(*index2ifc) * nindex2ifc);
 }
 n = nindex2ifc;
 for (nsize = nindex2ifc; nsize <= idx; nsize *= 2)
  ;
 if (n != nsize) {
  p = (struct ifc **)realloc(index2ifc,
      sizeof(*index2ifc) * nsize);
  if (p == ((void*)0)) {
   fatal("realloc");

  }
  memset(p + n, 0, sizeof(*index2ifc) * (nindex2ifc - n));
  index2ifc = p;
  nindex2ifc = nsize;
 }
 index2ifc[idx] = ifcp;
}
