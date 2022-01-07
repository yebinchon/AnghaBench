
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 int progress ;

__attribute__((used)) static void show_progress(void)
{
 static int counter = 0;
 if (!progress)
  return;
 if ((++counter % progress) == 0)
  printf("progress %d objects\n", counter);
}
