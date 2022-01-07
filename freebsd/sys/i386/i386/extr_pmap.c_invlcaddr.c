
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int invlpg (int ) ;

__attribute__((used)) static __inline void
invlcaddr(void *caddr)
{

 invlpg((u_int)caddr);
}
