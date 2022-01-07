
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct compressor {int arg; int cb; int priv; TYPE_1__* methods; } ;
struct TYPE_2__ {int (* write ) (int ,int *,int ,int ,int ) ;} ;


 int stub1 (int ,int *,int ,int ,int ) ;

int
compressor_flush(struct compressor *stream)
{

 return (stream->methods->write(stream->priv, ((void*)0), 0, stream->cb,
     stream->arg));
}
