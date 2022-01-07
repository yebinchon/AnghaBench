
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int AFMT_16BIT ;
 int AFMT_CHANNEL (int) ;
 int AFMT_SIGNED ;

__attribute__((used)) static u_int32_t
tr_fmttobits(u_int32_t fmt)
{
 u_int32_t bits;

 bits = 0;
 bits |= (fmt & AFMT_SIGNED)? 0x2 : 0;
 bits |= (AFMT_CHANNEL(fmt) > 1)? 0x4 : 0;
 bits |= (fmt & AFMT_16BIT)? 0x8 : 0;

 return bits;
}
