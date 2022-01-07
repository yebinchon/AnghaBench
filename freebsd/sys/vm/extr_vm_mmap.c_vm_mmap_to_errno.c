
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EACCES ;
 int EINVAL ;
 int ENOMEM ;





int
vm_mmap_to_errno(int rv)
{

 switch (rv) {
 case 128:
  return (0);
 case 131:
 case 130:
  return (ENOMEM);
 case 129:
  return (EACCES);
 default:
  return (EINVAL);
 }
}
