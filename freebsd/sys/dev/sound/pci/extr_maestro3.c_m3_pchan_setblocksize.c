
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_pchinfo {int buffer; int dac_idx; } ;
typedef int kobj_t ;


 int CHANGE ;
 int M3_DEBUG (int ,char*) ;
 int sndbuf_getblksz (int ) ;

__attribute__((used)) static u_int32_t
m3_pchan_setblocksize(kobj_t kobj, void *chdata, u_int32_t blocksize)
{
 struct sc_pchinfo *ch = chdata;

 M3_DEBUG(CHANGE, ("m3_pchan_setblocksize(dac=%d, blocksize=%d)\n",
     ch->dac_idx, blocksize));

 return (sndbuf_getblksz(ch->buffer));
}
