
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1816_info {int lock; } ;


 int snd_mtxunlock (int ) ;

__attribute__((used)) static void
ad1816_unlock(struct ad1816_info *ad1816)
{
 snd_mtxunlock(ad1816->lock);
}
