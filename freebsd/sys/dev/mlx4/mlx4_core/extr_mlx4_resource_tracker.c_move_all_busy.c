
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;
typedef enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;


 int HZ ;
 int _move_all_busy (struct mlx4_dev*,int,int,int) ;
 int cond_resched () ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int move_all_busy(struct mlx4_dev *dev, int slave,
    enum mlx4_resource type)
{
 unsigned long begin;
 int busy;

 begin = jiffies;
 do {
  busy = _move_all_busy(dev, slave, type, 0);
  if (time_after(jiffies, begin + 5 * HZ))
   break;
  if (busy)
   cond_resched();
 } while (busy);

 if (busy)
  busy = _move_all_busy(dev, slave, type, 1);

 return busy;
}
