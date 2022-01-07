
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_TEMP ;
 int free (void*,int ) ;
 int pwd_ensure_dirs () ;

__attribute__((used)) static void
set_rootvnode(void *arg, int npending)
{

 pwd_ensure_dirs();

 free(arg, M_TEMP);
}
