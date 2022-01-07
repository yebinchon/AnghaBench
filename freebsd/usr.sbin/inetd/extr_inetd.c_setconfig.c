
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG ;
 int SEEK_SET ;
 int * fconfig ;
 int * fopen (int ,char*) ;
 int fseek (int *,long,int ) ;

__attribute__((used)) static int
setconfig(void)
{

 if (fconfig != ((void*)0)) {
  fseek(fconfig, 0L, SEEK_SET);
  return (1);
 }
 fconfig = fopen(CONFIG, "r");
 return (fconfig != ((void*)0));
}
