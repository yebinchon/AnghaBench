
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int basemem ;
 int pmap_basemem_setup (int) ;
 int printf (char*,int) ;

__attribute__((used)) static void
basemem_setup(void)
{

 if (basemem > 640) {
  printf("Preposterous BIOS basemem of %uK, truncating to 640K\n",
   basemem);
  basemem = 640;
 }

 pmap_basemem_setup(basemem);
}
