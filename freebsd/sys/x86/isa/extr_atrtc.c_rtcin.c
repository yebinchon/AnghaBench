
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int atrtc_lock ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int rtcin_locked (int) ;

int
rtcin(int reg)
{
 u_char val;

 mtx_lock_spin(&atrtc_lock);
 val = rtcin_locked(reg);
 mtx_unlock_spin(&atrtc_lock);
 return (val);
}
