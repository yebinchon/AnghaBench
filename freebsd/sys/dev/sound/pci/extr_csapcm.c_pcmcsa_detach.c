
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_info {int dummy; } ;
typedef int device_t ;


 int csa_releaseres (struct csa_info*,int ) ;
 struct csa_info* pcm_getdevinfo (int ) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
pcmcsa_detach(device_t dev)
{
 int r;
 struct csa_info *csa;

 r = pcm_unregister(dev);
 if (r)
  return r;

 csa = pcm_getdevinfo(dev);
 csa_releaseres(csa, dev);

 return 0;
}
