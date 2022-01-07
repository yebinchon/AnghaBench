
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int timer; scalar_t__ map; } ;
struct mthca_dev {TYPE_1__ catas_err; } ;


 scalar_t__ MTHCA_CATAS_POLL_INTERVAL ;
 int handle_catas (struct mthca_dev*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 scalar_t__ readl (scalar_t__) ;
 int round_jiffies (scalar_t__) ;

__attribute__((used)) static void poll_catas(unsigned long dev_ptr)
{
 struct mthca_dev *dev = (struct mthca_dev *) dev_ptr;
 int i;

 for (i = 0; i < dev->catas_err.size; ++i)
  if (readl(dev->catas_err.map + i)) {
   handle_catas(dev);
   return;
  }

 mod_timer(&dev->catas_err.timer,
    round_jiffies(jiffies + MTHCA_CATAS_POLL_INTERVAL));
}
