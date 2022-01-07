
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcm_channel {int dummy; } ;
struct feeder_chain_state {TYPE_1__* matrix; int afmt; } ;
struct feeder_chain_desc {scalar_t__ afmt_ne; struct feeder_chain_state target; struct feeder_chain_state current; } ;
struct TYPE_2__ {int ext; int channels; } ;


 scalar_t__ AFMT_ENCODING (int ) ;
 int SND_FORMAT (scalar_t__,int ,int ) ;
 int feeder_build_format (struct pcm_channel*,struct feeder_chain_desc*) ;

__attribute__((used)) static int
feeder_build_formatne(struct pcm_channel *c, struct feeder_chain_desc *cdesc)
{
 struct feeder_chain_state otarget;
 int ret;

 if (cdesc->afmt_ne == 0 ||
     AFMT_ENCODING(cdesc->current.afmt) == cdesc->afmt_ne)
  return (0);

 otarget = cdesc->target;
 cdesc->target = cdesc->current;
 cdesc->target.afmt = SND_FORMAT(cdesc->afmt_ne,
     cdesc->current.matrix->channels, cdesc->current.matrix->ext);

 ret = feeder_build_format(c, cdesc);
 if (ret != 0)
  return (ret);

 cdesc->target = otarget;

 return (0);
}
