
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct object_cb_data {TYPE_1__* expand; int opt; int scratch; } ;
struct TYPE_2__ {int oid; } ;


 int batch_object_write (int *,int ,int ,TYPE_1__*) ;
 int oidcpy (int *,struct object_id const*) ;

__attribute__((used)) static int batch_object_cb(const struct object_id *oid, void *vdata)
{
 struct object_cb_data *data = vdata;
 oidcpy(&data->expand->oid, oid);
 batch_object_write(((void*)0), data->scratch, data->opt, data->expand);
 return 0;
}
