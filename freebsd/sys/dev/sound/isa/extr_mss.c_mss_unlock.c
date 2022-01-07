
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int lock; } ;


 int snd_mtxunlock (int ) ;

__attribute__((used)) static void
mss_unlock(struct mss_info *mss)
{
 snd_mtxunlock(mss->lock);
}
