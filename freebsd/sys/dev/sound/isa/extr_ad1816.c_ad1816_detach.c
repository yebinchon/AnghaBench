
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1816_info {int dummy; } ;
typedef int device_t ;


 int ad1816_release_resources (struct ad1816_info*,int ) ;
 struct ad1816_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
ad1816_detach(device_t dev)
{
 int r;
 struct ad1816_info *ad1816;

 r = pcm_unregister(dev);
 if (r)
  return r;

 ad1816 = pcm_getdevinfo(dev);
     ad1816_release_resources(ad1816, dev);
 return 0;
}
