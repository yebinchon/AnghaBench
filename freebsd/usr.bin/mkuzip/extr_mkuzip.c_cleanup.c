
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cleanfile ;
 int unlink (int *) ;

__attribute__((used)) static void
cleanup(void)
{

 if (cleanfile != ((void*)0))
  unlink(cleanfile);
}
