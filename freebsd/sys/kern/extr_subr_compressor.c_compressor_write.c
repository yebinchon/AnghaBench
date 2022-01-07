
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct compressor {int arg; int cb; int priv; TYPE_1__* methods; } ;
struct TYPE_2__ {int (* write ) (int ,void*,size_t,int ,int ) ;} ;


 int stub1 (int ,void*,size_t,int ,int ) ;

int
compressor_write(struct compressor *stream, void *data, size_t len)
{

 return (stream->methods->write(stream->priv, data, len, stream->cb,
     stream->arg));
}
