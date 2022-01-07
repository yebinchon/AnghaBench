
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct physical {int link; int * out; } ;


 int link_DeleteQueue (int *) ;
 int m_freem (int *) ;

void
physical_DeleteQueue(struct physical *p)
{
  if (p->out) {
    m_freem(p->out);
    p->out = ((void*)0);
  }
  link_DeleteQueue(&p->link);
}
