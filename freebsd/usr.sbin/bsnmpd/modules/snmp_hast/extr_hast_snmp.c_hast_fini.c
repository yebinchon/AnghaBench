
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfgpath ;
 int free (int ) ;
 int free_resources () ;
 int hast_index ;
 int or_unregister (int ) ;

__attribute__((used)) static int
hast_fini(void)
{

 or_unregister(hast_index);
 free_resources();
 free(cfgpath);
 return (0);
}
