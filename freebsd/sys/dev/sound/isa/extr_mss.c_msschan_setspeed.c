
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mss_info {int dummy; } ;
struct mss_chinfo {struct mss_info* parent; } ;
typedef int kobj_t ;


 int mss_lock (struct mss_info*) ;
 int mss_speed (struct mss_chinfo*,int ) ;
 int mss_unlock (struct mss_info*) ;

__attribute__((used)) static u_int32_t
msschan_setspeed(kobj_t obj, void *data, u_int32_t speed)
{
 struct mss_chinfo *ch = data;
 struct mss_info *mss = ch->parent;
 u_int32_t r;

 mss_lock(mss);
 r = mss_speed(ch, speed);
 mss_unlock(mss);

 return r;
}
