
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feed_eq_info {int * coeff; int rate; } ;


 int EINVAL ;
 int * feed_eq_coeff_rate (int ) ;
 int feed_eq_reset (struct feed_eq_info*) ;

__attribute__((used)) static int
feed_eq_setup(struct feed_eq_info *info)
{

 info->coeff = feed_eq_coeff_rate(info->rate);
 if (info->coeff == ((void*)0))
  return (EINVAL);

 feed_eq_reset(info);

 return (0);
}
