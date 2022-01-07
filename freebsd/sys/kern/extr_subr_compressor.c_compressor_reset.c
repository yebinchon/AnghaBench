
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct compressor {int priv; TYPE_1__* methods; } ;
struct TYPE_2__ {int (* reset ) (int ) ;} ;


 int stub1 (int ) ;

void
compressor_reset(struct compressor *stream)
{

 stream->methods->reset(stream->priv);
}
