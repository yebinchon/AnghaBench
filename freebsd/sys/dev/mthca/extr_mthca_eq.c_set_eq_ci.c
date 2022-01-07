
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_eq {int dummy; } ;
struct mthca_dev {int dummy; } ;


 int arbel_set_eq_ci (struct mthca_dev*,struct mthca_eq*,int ) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int tavor_set_eq_ci (struct mthca_dev*,struct mthca_eq*,int ) ;

__attribute__((used)) static inline void set_eq_ci(struct mthca_dev *dev, struct mthca_eq *eq, u32 ci)
{
 if (mthca_is_memfree(dev))
  arbel_set_eq_ci(dev, eq, ci);
 else
  tavor_set_eq_ci(dev, eq, ci);
}
