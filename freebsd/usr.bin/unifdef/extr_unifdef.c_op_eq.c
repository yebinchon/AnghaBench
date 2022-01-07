
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Linetype ;


 int op_strict (long*,int,int ,int ) ;

__attribute__((used)) static Linetype op_eq(long *p, Linetype at, long a, Linetype bt, long b) {
 return op_strict(p, a == b, at, bt);
}
