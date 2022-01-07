
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_4__ {int plugged; } ;


 int deflate_to_pack (TYPE_1__*,struct object_id*,int,size_t,int,char const*,unsigned int) ;
 int finish_bulk_checkin (TYPE_1__*) ;
 TYPE_1__ state ;

int index_bulk_checkin(struct object_id *oid,
         int fd, size_t size, enum object_type type,
         const char *path, unsigned flags)
{
 int status = deflate_to_pack(&state, oid, fd, size, type,
         path, flags);
 if (!state.plugged)
  finish_bulk_checkin(&state);
 return status;
}
