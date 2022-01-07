
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_data {int dataflags; } ;


 int FSESS_DEAD ;

__attribute__((used)) static inline bool
fdata_get_dead(struct fuse_data *data)
{
 return (data->dataflags & FSESS_DEAD);
}
