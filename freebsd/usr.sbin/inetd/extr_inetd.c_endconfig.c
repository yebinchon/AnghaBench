
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * fconfig ;

__attribute__((used)) static void
endconfig(void)
{
 if (fconfig) {
  (void) fclose(fconfig);
  fconfig = ((void*)0);
 }
}
