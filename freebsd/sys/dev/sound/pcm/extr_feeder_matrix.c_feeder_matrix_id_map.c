
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmchan_matrix {int dummy; } ;


 int SND_CHN_MATRIX_BEGIN ;
 int SND_CHN_MATRIX_END ;
 struct pcmchan_matrix* feeder_matrix_maps ;

struct pcmchan_matrix *
feeder_matrix_id_map(int id)
{

 if (id < SND_CHN_MATRIX_BEGIN || id > SND_CHN_MATRIX_END)
  return (((void*)0));

 return (&feeder_matrix_maps[id]);
}
