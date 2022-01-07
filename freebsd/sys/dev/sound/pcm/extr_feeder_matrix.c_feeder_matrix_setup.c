
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmchan_matrix {int dummy; } ;
struct pcm_feeder {int * data; TYPE_1__* desc; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int EINVAL ;
 scalar_t__ FEEDER_MATRIX ;
 int feed_matrix_setup (int *,struct pcmchan_matrix*,struct pcmchan_matrix*) ;

int
feeder_matrix_setup(struct pcm_feeder *f, struct pcmchan_matrix *m_in,
    struct pcmchan_matrix *m_out)
{

 if (f == ((void*)0) || f->desc == ((void*)0) || f->desc->type != FEEDER_MATRIX ||
     f->data == ((void*)0))
  return (EINVAL);

 return (feed_matrix_setup(f->data, m_in, m_out));
}
