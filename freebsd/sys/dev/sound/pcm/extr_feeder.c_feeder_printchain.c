
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcm_feeder {struct pcm_feeder* source; TYPE_2__* desc; TYPE_1__* class; } ;
struct TYPE_4__ {int idx; } ;
struct TYPE_3__ {char* name; } ;


 int printf (char*,...) ;

void
feeder_printchain(struct pcm_feeder *head)
{
 struct pcm_feeder *f;

 printf("feeder chain (head @%p)\n", head);
 f = head;
 while (f != ((void*)0)) {
  printf("%s/%d @ %p\n", f->class->name, f->desc->idx, f);
  f = f->source;
 }
 printf("[end]\n\n");
}
