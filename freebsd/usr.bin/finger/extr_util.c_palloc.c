
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PERSON ;


 int err (int,int *) ;
 int * malloc (int) ;

PERSON *
palloc(void)
{
 PERSON *p;

 if ((p = malloc(sizeof(PERSON))) == ((void*)0))
  err(1, ((void*)0));
 return(p);
}
