
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int MPASS (int) ;
 int * intrcnt ;
 size_t intrcnt_index ;
 int intrcnt_lock ;
 int intrcnt_setname (char const*,size_t) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 size_t nintrcnt ;

void
intrcnt_add(const char *name, u_long **countp)
{

 mtx_lock_spin(&intrcnt_lock);
 MPASS(intrcnt_index < nintrcnt);
 *countp = &intrcnt[intrcnt_index];
 intrcnt_setname(name, intrcnt_index);
 intrcnt_index++;
 mtx_unlock_spin(&intrcnt_lock);
}
