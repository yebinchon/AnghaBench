
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct tr_chinfo {int cso; int buffer; } ;
typedef int kobj_t ;


 int sndbuf_getalign (int ) ;
 int tr_rdch (struct tr_chinfo*) ;

__attribute__((used)) static u_int32_t
trpchan_getptr(kobj_t obj, void *data)
{
 struct tr_chinfo *ch = data;

 tr_rdch(ch);
 return ch->cso * sndbuf_getalign(ch->buffer);
}
