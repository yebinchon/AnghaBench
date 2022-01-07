
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ksiginfo_t ;


 int M_NOWAIT ;
 int M_ZERO ;
 int * ksiginfo_zone ;
 scalar_t__ uma_zalloc (int *,int) ;

ksiginfo_t *
ksiginfo_alloc(int wait)
{
 int flags;

 flags = M_ZERO;
 if (! wait)
  flags |= M_NOWAIT;
 if (ksiginfo_zone != ((void*)0))
  return ((ksiginfo_t *)uma_zalloc(ksiginfo_zone, flags));
 return (((void*)0));
}
