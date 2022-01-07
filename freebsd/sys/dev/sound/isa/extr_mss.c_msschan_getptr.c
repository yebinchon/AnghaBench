
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mss_chinfo {int buffer; } ;
typedef int kobj_t ;


 int sndbuf_dmaptr (int ) ;

__attribute__((used)) static u_int32_t
msschan_getptr(kobj_t obj, void *data)
{
 struct mss_chinfo *ch = data;
 return sndbuf_dmaptr(ch->buffer);
}
