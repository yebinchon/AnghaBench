
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xencons_priv {int mtx; } ;


 int mtx_lock_spin (int *) ;
 int * panicstr ;

__attribute__((used)) static inline void xencons_lock(struct xencons_priv *cons)
{

 if (panicstr == ((void*)0))
  mtx_lock_spin(&cons->mtx);

}
