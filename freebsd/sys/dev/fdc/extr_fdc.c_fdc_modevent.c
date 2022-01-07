
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int g_fd_class ;
 int g_modevent (int *,int,int *) ;

__attribute__((used)) static int
fdc_modevent(module_t mod, int type, void *data)
{

 return (g_modevent(((void*)0), type, &g_fd_class));
}
