
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int dummy; } ;
typedef int device_t ;


 int ess_release_resources (struct ess_info*,int ) ;
 struct ess_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
ess_detach(device_t dev)
{
 int r;
 struct ess_info *sc;

 r = pcm_unregister(dev);
 if (r)
  return r;

 sc = pcm_getdevinfo(dev);
     ess_release_resources(sc, dev);
 return 0;
}
