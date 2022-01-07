
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct fuse_data {scalar_t__ cache_mode; } ;


 scalar_t__ FUSE_CACHE_UC ;
 struct fuse_data* fuse_get_mpdata (struct mount*) ;

__attribute__((used)) static inline bool
fsess_opt_datacache(struct mount *mp)
{
 struct fuse_data *data = fuse_get_mpdata(mp);

 return (data->cache_mode != FUSE_CACHE_UC);
}
