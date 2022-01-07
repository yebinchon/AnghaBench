
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm_feeder {struct feed_volume_info* data; } ;
struct feed_volume_info {int dummy; } ;


 int M_DEVBUF ;
 int free (struct feed_volume_info*,int ) ;

__attribute__((used)) static int
feed_volume_free(struct pcm_feeder *f)
{
 struct feed_volume_info *info;

 info = f->data;
 if (info != ((void*)0))
  free(info, M_DEVBUF);

 f->data = ((void*)0);

 return (0);
}
