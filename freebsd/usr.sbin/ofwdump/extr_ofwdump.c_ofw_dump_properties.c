
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prop ;
typedef int phandle_t ;


 int ofw_dump_property (int,int ,int,char*,int,int) ;
 int ofw_firstprop (int,int ,char*,int) ;
 int ofw_nextprop (int,int ,char*,char*,int) ;

__attribute__((used)) static void
ofw_dump_properties(int fd, phandle_t n, int level, int raw, int str)
{
 int nlen;
 char prop[32];

 for (nlen = ofw_firstprop(fd, n, prop, sizeof(prop)); nlen != 0;
      nlen = ofw_nextprop(fd, n, prop, prop, sizeof(prop)))
  ofw_dump_property(fd, n, level, prop, raw, str);
}
