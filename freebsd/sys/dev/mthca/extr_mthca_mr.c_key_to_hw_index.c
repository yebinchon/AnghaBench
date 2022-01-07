
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_dev {int dummy; } ;


 int arbel_key_to_hw_index (int ) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;
 int tavor_key_to_hw_index (int ) ;

__attribute__((used)) static inline u32 key_to_hw_index(struct mthca_dev *dev, u32 key)
{
 if (mthca_is_memfree(dev))
  return arbel_key_to_hw_index(key);
 else
  return tavor_key_to_hw_index(key);
}
