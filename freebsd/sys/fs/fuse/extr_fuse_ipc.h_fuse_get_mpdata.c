
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {struct fuse_data* mnt_data; } ;
struct fuse_data {int dummy; } ;



__attribute__((used)) static inline struct fuse_data *
fuse_get_mpdata(struct mount *mp)
{
 return mp->mnt_data;
}
