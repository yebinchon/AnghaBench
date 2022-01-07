
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
struct fuse_data {unsigned long long notimpl; } ;


 struct fuse_data* fuse_get_mpdata (struct mount*) ;

__attribute__((used)) static inline bool
fsess_isimpl(struct mount *mp, int opcode)
{
 struct fuse_data *data = fuse_get_mpdata(mp);

 return ((data->notimpl & (1ULL << opcode)) == 0);

}
