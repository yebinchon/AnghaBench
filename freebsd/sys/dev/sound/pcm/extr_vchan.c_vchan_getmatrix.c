
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcmchan_matrix {int dummy; } ;
typedef int kobj_t ;


 struct pcmchan_matrix* feeder_matrix_format_map (int ) ;

__attribute__((used)) static struct pcmchan_matrix *
vchan_getmatrix(kobj_t obj, void *data, uint32_t format)
{

 return (feeder_matrix_format_map(format));
}
