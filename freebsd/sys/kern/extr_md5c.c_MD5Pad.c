
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* count; } ;
typedef TYPE_1__ MD5_CTX ;


 int Encode (unsigned char*,int*,int) ;
 int MD5Update (TYPE_1__*,unsigned char*,int) ;
 unsigned char* PADDING ;

__attribute__((used)) static void
MD5Pad (MD5_CTX *context)
{
 unsigned char bits[8];
 unsigned int index, padLen;


 Encode (bits, context->count, 8);


 index = (unsigned int)((context->count[0] >> 3) & 0x3f);
 padLen = (index < 56) ? (56 - index) : (120 - index);
 MD5Update (context, PADDING, padLen);


 MD5Update (context, bits, 8);
}
