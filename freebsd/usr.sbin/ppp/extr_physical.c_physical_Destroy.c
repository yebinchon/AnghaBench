
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int total; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct physical {TYPE_2__ link; } ;


 int free (struct physical*) ;
 int physical_Close (struct physical*) ;
 int throughput_destroy (int *) ;

void
physical_Destroy(struct physical *p)
{
  physical_Close(p);
  throughput_destroy(&p->link.stats.total);
  free(p);
}
