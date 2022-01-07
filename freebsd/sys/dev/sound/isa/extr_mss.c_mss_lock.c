
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int lock; } ;


 int snd_mtxlock (int ) ;

__attribute__((used)) static void
mss_lock(struct mss_info *mss)
{
 snd_mtxlock(mss->lock);
}
