
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_feeder {int dummy; } ;
typedef int kobj_t ;


 int FEEDER_FREE (struct pcm_feeder*) ;
 int M_FEEDER ;
 int kobj_delete (int ,int ) ;

__attribute__((used)) static void
feeder_destroy(struct pcm_feeder *f)
{
 FEEDER_FREE(f);
 kobj_delete((kobj_t)f, M_FEEDER);
}
