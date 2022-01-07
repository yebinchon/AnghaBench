
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * capname ;
 int unlink (int *) ;

__attribute__((used)) static void
dounlink(void)
{
 if (capname != ((void*)0))
  (void)unlink(capname);
}
