
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sb_info {int dummy; } ;
typedef int device_t ;


 struct sb_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;
 int sb16_release_resources (struct sb_info*,int ) ;

__attribute__((used)) static int
sb16_detach(device_t dev)
{
 int r;
 struct sb_info *sb;

 r = pcm_unregister(dev);
 if (r)
  return r;

 sb = pcm_getdevinfo(dev);
     sb16_release_resources(sb, dev);
 return 0;
}
