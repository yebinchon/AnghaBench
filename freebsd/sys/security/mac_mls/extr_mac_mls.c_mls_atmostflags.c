
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int mm_flags; } ;


 int EINVAL ;

__attribute__((used)) static int
mls_atmostflags(struct mac_mls *mm, int flags)
{

 if ((mm->mm_flags & flags) != mm->mm_flags)
  return (EINVAL);
 return (0);
}
