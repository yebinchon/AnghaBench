
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_sport {int sp_maps; scalar_t__ sp_num_maps; int sp_type; int sp_num; } ;
typedef int bhnd_port_type ;
typedef int bcma_pid_t ;


 int M_BHND ;
 int M_NOWAIT ;
 int STAILQ_INIT (int *) ;
 struct bcma_sport* malloc (int,int ,int ) ;

struct bcma_sport *
bcma_alloc_sport(bcma_pid_t port_num, bhnd_port_type port_type)
{
 struct bcma_sport *sport;

 sport = malloc(sizeof(struct bcma_sport), M_BHND, M_NOWAIT);
 if (sport == ((void*)0))
  return ((void*)0);

 sport->sp_num = port_num;
 sport->sp_type = port_type;
 sport->sp_num_maps = 0;
 STAILQ_INIT(&sport->sp_maps);

 return sport;
}
