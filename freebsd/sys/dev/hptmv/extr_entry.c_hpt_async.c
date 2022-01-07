
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int32_t ;
typedef void cam_path ;


 int UNREFERENCED_PARAMETER (void*) ;
 int panic (char*) ;

__attribute__((used)) static void
hpt_async(void * callback_arg, u_int32_t code, struct cam_path * path,
    void * arg)
{

 panic("Here");
 UNREFERENCED_PARAMETER(callback_arg);
 UNREFERENCED_PARAMETER(code);
 UNREFERENCED_PARAMETER(path);
 UNREFERENCED_PARAMETER(arg);

}
