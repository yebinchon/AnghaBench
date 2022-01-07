
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp {int link; } ;


 size_t link_QueueLen (int *) ;

size_t
mp_QueueLen(struct mp *mp)
{
  return link_QueueLen(&mp->link);
}
