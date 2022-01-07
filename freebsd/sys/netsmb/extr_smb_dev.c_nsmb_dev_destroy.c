
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPASS (int ) ;
 int destroy_dev (int *) ;
 int * nsmb_dev ;

__attribute__((used)) static void
nsmb_dev_destroy(void)
{

 MPASS(nsmb_dev != ((void*)0));
 destroy_dev(nsmb_dev);
 nsmb_dev = ((void*)0);
}
