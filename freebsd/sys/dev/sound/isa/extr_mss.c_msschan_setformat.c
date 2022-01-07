
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mss_info {int dummy; } ;
struct mss_chinfo {struct mss_info* parent; } ;
typedef int kobj_t ;


 int mss_format (struct mss_chinfo*,int ) ;
 int mss_lock (struct mss_info*) ;
 int mss_unlock (struct mss_info*) ;

__attribute__((used)) static int
msschan_setformat(kobj_t obj, void *data, u_int32_t format)
{
 struct mss_chinfo *ch = data;
 struct mss_info *mss = ch->parent;

 mss_lock(mss);
 mss_format(ch, format);
 mss_unlock(mss);
 return 0;
}
