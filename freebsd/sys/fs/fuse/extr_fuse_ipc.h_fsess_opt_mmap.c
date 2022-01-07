
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;


 int fsess_opt_datacache (struct mount*) ;

__attribute__((used)) static inline bool
fsess_opt_mmap(struct mount *mp)
{
 return (fsess_opt_datacache(mp));
}
