
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int nm_prerr (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline u_int
ring_middle(u_int inf, u_int sup, u_int lim)
{
 u_int n = lim + 1;
 u_int e;

 if (sup >= inf) {
  e = (sup + inf) / 2;
 } else {
  e = (sup + n + inf) / 2;
  if (e >= n) {
   e -= n;
  }
 }

 if (unlikely(e >= n)) {
  nm_prerr("This cannot happen");
  e = 0;
 }

 return e;
}
