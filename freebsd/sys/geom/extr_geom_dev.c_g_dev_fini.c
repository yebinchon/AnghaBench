
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int * dumpdev ;
 int freeenv (int *) ;

__attribute__((used)) static void
g_dev_fini(struct g_class *mp)
{

 freeenv(dumpdev);
 dumpdev = ((void*)0);
}
