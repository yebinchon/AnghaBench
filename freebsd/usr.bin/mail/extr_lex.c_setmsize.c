
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * calloc (unsigned int,int) ;
 int free (int *) ;
 int * msgvec ;

void
setmsize(int sz)
{

 if (msgvec != ((void*)0))
  (void)free(msgvec);
 msgvec = calloc((unsigned)(sz + 1), sizeof(*msgvec));
}
