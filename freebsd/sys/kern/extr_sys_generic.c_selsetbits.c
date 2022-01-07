
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_mask ;


 int* select_flags ;

__attribute__((used)) static __inline int
selsetbits(fd_mask **ibits, fd_mask **obits, int idx, fd_mask bit, int events)
{
 int msk;
 int n;

 n = 0;
 for (msk = 0; msk < 3; msk++) {
  if ((events & select_flags[msk]) == 0)
   continue;
  if (ibits[msk] == ((void*)0))
   continue;
  if ((ibits[msk][idx] & bit) == 0)
   continue;






  if ((obits[msk][idx] & bit) != 0)
   continue;
  obits[msk][idx] |= bit;
  n++;
 }

 return (n);
}
