
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int kaddr ;
typedef int intrcntlen ;
struct TYPE_2__ {scalar_t__ n_type; } ;


 int X_INTRCNT ;
 size_t X_NINTRCNT ;
 int X_SINTRCNT ;
 int err (int,char*) ;
 int * kd ;
 int kread (int ,...) ;
 int kreadptr (uintptr_t,unsigned long*,size_t) ;
 unsigned long* malloc (size_t) ;
 scalar_t__ mysysctl (char*,unsigned long*,size_t*) ;
 TYPE_1__* namelist ;
 unsigned long* reallocf (unsigned long*,size_t) ;

__attribute__((used)) static unsigned int
read_intrcnts(unsigned long **intrcnts)
{
 size_t intrcntlen;
 uintptr_t kaddr;

 if (kd != ((void*)0)) {
  kread(X_SINTRCNT, &intrcntlen, sizeof(intrcntlen));
  if ((*intrcnts = malloc(intrcntlen)) == ((void*)0))
   err(1, "malloc()");
  if (namelist[X_NINTRCNT].n_type == 0)
   kread(X_INTRCNT, *intrcnts, intrcntlen);
  else {
   kread(X_INTRCNT, &kaddr, sizeof(kaddr));
   kreadptr(kaddr, *intrcnts, intrcntlen);
  }
 } else {
  for (*intrcnts = ((void*)0), intrcntlen = 1024; ; intrcntlen *= 2) {
   *intrcnts = reallocf(*intrcnts, intrcntlen);
   if (*intrcnts == ((void*)0))
    err(1, "reallocf()");
   if (mysysctl("hw.intrcnt", *intrcnts, &intrcntlen) == 0)
    break;
  }
 }

 return (intrcntlen / sizeof(unsigned long));
}
