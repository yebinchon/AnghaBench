
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int remove (int *) ;
 int * tempname ;

__attribute__((used)) static void
cleantemp(void)
{
 if (tempname != ((void*)0))
  remove(tempname);
}
