
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_fn_t ;


 int CONFIG_ORIGIN_STDIN ;
 int do_config_from_file (int ,int ,char*,int *,int ,void*,int *) ;
 int stdin ;

__attribute__((used)) static int git_config_from_stdin(config_fn_t fn, void *data)
{
 return do_config_from_file(fn, CONFIG_ORIGIN_STDIN, "", ((void*)0), stdin,
       data, ((void*)0));
}
