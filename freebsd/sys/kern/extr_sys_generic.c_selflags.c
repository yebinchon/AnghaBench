
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_mask ;


 int* select_flags ;

__attribute__((used)) static __inline int
selflags(fd_mask **ibits, int idx, fd_mask bit)
{
 int flags;
 int msk;

 flags = 0;
 for (msk = 0; msk < 3; msk++) {
  if (ibits[msk] == ((void*)0))
   continue;
  if ((ibits[msk][idx] & bit) == 0)
   continue;
  flags |= select_flags[msk];
 }
 return (flags);
}
