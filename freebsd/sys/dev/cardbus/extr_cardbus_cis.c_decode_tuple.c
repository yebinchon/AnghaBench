
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct tuple_callbacks {int id; int (* func ) (int ,int ,int,int,int *,int ,int *,struct tuple_callbacks*,void*) ;} ;
typedef int device_t ;


 int CISTPL_GENERIC ;
 int stub1 (int ,int ,int,int,int *,int ,int *,struct tuple_callbacks*,void*) ;
 int stub2 (int ,int ,int,int,int *,int ,int *,struct tuple_callbacks*,void*) ;

__attribute__((used)) static int
decode_tuple(device_t cbdev, device_t child, int tupleid, int len,
    uint8_t *tupledata, uint32_t start, uint32_t *off,
    struct tuple_callbacks *callbacks, void *argp)
{
 int i;
 for (i = 0; callbacks[i].id != CISTPL_GENERIC; i++) {
  if (tupleid == callbacks[i].id)
   return (callbacks[i].func(cbdev, child, tupleid, len,
       tupledata, start, off, &callbacks[i], argp));
 }
 return (callbacks[i].func(cbdev, child, tupleid, len,
     tupledata, start, off, ((void*)0), argp));
}
