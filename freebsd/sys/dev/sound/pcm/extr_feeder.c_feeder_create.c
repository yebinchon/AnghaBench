
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_feederdesc {scalar_t__ idx; scalar_t__ flags; scalar_t__ out; scalar_t__ in; int type; } ;
struct pcm_feeder {struct pcm_feederdesc* desc; struct pcm_feederdesc desc_static; struct feeder_class* class; int * parent; int * source; int data; } ;
struct feeder_class {char* name; int data; } ;
typedef int kobj_class_t ;


 int FEEDER_INIT (struct pcm_feeder*) ;
 int FEEDER_ROOT ;
 int M_FEEDER ;
 int M_NOWAIT ;
 int M_ZERO ;
 int feeder_destroy (struct pcm_feeder*) ;
 scalar_t__ kobj_create (int ,int ,int) ;
 int printf (char*,struct pcm_feeder*,char*,int) ;

__attribute__((used)) static struct pcm_feeder *
feeder_create(struct feeder_class *fc, struct pcm_feederdesc *desc)
{
 struct pcm_feeder *f;
 int err;

 f = (struct pcm_feeder *)kobj_create((kobj_class_t)fc, M_FEEDER, M_NOWAIT | M_ZERO);
 if (f == ((void*)0))
  return ((void*)0);

 f->data = fc->data;
 f->source = ((void*)0);
 f->parent = ((void*)0);
 f->class = fc;
 f->desc = &(f->desc_static);

 if (desc) {
  *(f->desc) = *desc;
 } else {
  f->desc->type = FEEDER_ROOT;
  f->desc->in = 0;
  f->desc->out = 0;
  f->desc->flags = 0;
  f->desc->idx = 0;
 }

 err = FEEDER_INIT(f);
 if (err) {
  printf("feeder_init(%p) on %s returned %d\n", f, fc->name, err);
  feeder_destroy(f);

  return ((void*)0);
 }

 return f;
}
