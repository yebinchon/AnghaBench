
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_rchinfo {int buffer; } ;
typedef int kobj_t ;


 int sndbuf_resize (int ,int,int ) ;

__attribute__((used)) static u_int32_t
trrchan_setblocksize(kobj_t obj, void *data, u_int32_t blocksize)
{
 struct tr_rchinfo *ch = data;

 sndbuf_resize(ch->buffer, 2, blocksize);

 return blocksize;
}
