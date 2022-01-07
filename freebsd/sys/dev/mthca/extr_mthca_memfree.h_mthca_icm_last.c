
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_icm_iter {int chunk; } ;



__attribute__((used)) static inline int mthca_icm_last(struct mthca_icm_iter *iter)
{
 return !iter->chunk;
}
