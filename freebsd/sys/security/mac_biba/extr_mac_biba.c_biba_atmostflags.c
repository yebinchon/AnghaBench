
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_biba {int mb_flags; } ;


 int EINVAL ;

__attribute__((used)) static int
biba_atmostflags(struct mac_biba *mb, int flags)
{

 if ((mb->mb_flags & flags) != mb->mb_flags)
  return (EINVAL);
 return (0);
}
