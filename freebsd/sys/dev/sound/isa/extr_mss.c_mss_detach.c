
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mss_info {int dummy; } ;
typedef int device_t ;


 int mss_release_resources (struct mss_info*,int ) ;
 struct mss_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
mss_detach(device_t dev)
{
 int r;
     struct mss_info *mss;

 r = pcm_unregister(dev);
 if (r)
  return r;

 mss = pcm_getdevinfo(dev);
     mss_release_resources(mss, dev);

 return 0;
}
