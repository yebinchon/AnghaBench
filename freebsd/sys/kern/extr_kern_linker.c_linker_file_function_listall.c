
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linker_function_nameval_callback_t ;
typedef int linker_file_t ;


 int LINKER_EACH_FUNCTION_NAMEVAL (int ,int ,void*) ;

int
linker_file_function_listall(linker_file_t lf,
    linker_function_nameval_callback_t callback_func, void *arg)
{
 return (LINKER_EACH_FUNCTION_NAMEVAL(lf, callback_func, arg));
}
