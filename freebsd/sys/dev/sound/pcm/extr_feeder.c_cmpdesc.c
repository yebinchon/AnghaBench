
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_feederdesc {scalar_t__ type; scalar_t__ in; scalar_t__ out; scalar_t__ flags; } ;



__attribute__((used)) static int
cmpdesc(struct pcm_feederdesc *n, struct pcm_feederdesc *m)
{
 return ((n->type == m->type) &&
  ((n->in == 0) || (n->in == m->in)) &&
  ((n->out == 0) || (n->out == m->out)) &&
  (n->flags == m->flags));
}
