
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT4 ;
struct TYPE_3__ {int* count; unsigned char const* buffer; int state; } ;
typedef TYPE_1__ MD4_CTX ;


 int MD4Transform (int ,unsigned char const*) ;
 int bcopy (unsigned char const*,unsigned char const*,unsigned int) ;

void
MD4Update(MD4_CTX *context, const unsigned char *input,
    unsigned int inputLen)
{
  unsigned int i, index, partLen;


  index = (unsigned int)((context->count[0] >> 3) & 0x3F);

  if ((context->count[0] += ((UINT4)inputLen << 3))
      < ((UINT4)inputLen << 3))
    context->count[1]++;
  context->count[1] += ((UINT4)inputLen >> 29);

  partLen = 64 - index;


  if (inputLen >= partLen) {
    bcopy(input, &context->buffer[index], partLen);
    MD4Transform (context->state, context->buffer);

    for (i = partLen; i + 63 < inputLen; i += 64)
      MD4Transform (context->state, &input[i]);

    index = 0;
  }
  else
    i = 0;


  bcopy(&input[i], &context->buffer[index], inputLen-i);
}
