
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;


 int ISLASTCN ;
 int ISOPEN ;
 int LOCKLEAF ;
 int LOCKSHARED ;
 int MNT_EXTENDED_SHARED (struct mount*) ;

__attribute__((used)) static __inline int
needs_exclusive_leaf(struct mount *mp, int flags)
{





 if ((flags & (ISLASTCN | LOCKLEAF)) != (ISLASTCN | LOCKLEAF))
  return (0);


 if (!(flags & LOCKSHARED))
  return (1);






 if ((flags & ISOPEN) != 0)
  return (!MNT_EXTENDED_SHARED(mp));





 return (0);
}
