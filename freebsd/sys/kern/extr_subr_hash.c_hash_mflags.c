
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH_NOWAIT ;
 int M_NOWAIT ;
 int M_WAITOK ;

__attribute__((used)) static __inline int
hash_mflags(int flags)
{

 return ((flags & HASH_NOWAIT) ? M_NOWAIT : M_WAITOK);
}
