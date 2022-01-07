
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int atrtc_lock ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int rtcout_locked (int,int ) ;

void
writertc(int reg, u_char val)
{

 mtx_lock_spin(&atrtc_lock);
 rtcout_locked(reg, val);
 mtx_unlock_spin(&atrtc_lock);
}
