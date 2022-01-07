
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int max (int,int) ;

__attribute__((used)) static inline int
ms_scale(int x) {
 if (hz == 1000) {
  return (x);
 } else if (hz > 1000) {
  return (x*(hz/1000));
 } else {
  return (max(1, x/(1000/hz)));
 }
}
