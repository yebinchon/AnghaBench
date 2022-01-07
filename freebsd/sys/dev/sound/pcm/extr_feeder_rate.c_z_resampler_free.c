
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z_info {struct z_info* z_delay; struct z_info* z_pcoeff; } ;
struct pcm_feeder {struct z_info* data; } ;


 int M_DEVBUF ;
 int free (struct z_info*,int ) ;

__attribute__((used)) static int
z_resampler_free(struct pcm_feeder *f)
{
 struct z_info *info;

 info = f->data;
 if (info != ((void*)0)) {
  if (info->z_pcoeff != ((void*)0))
   free(info->z_pcoeff, M_DEVBUF);
  if (info->z_delay != ((void*)0))
   free(info->z_delay, M_DEVBUF);
  free(info, M_DEVBUF);
 }

 f->data = ((void*)0);

 return (0);
}
