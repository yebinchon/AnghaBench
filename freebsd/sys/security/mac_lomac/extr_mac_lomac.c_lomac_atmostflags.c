
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int ml_flags; } ;


 int EINVAL ;

__attribute__((used)) static int
lomac_atmostflags(struct mac_lomac *ml, int flags)
{

 if ((ml->ml_flags & flags) != ml->ml_flags)
  return (EINVAL);
 return (0);
}
