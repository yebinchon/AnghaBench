
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int cap_channel_t ;


 int cap_close (int *) ;
 int * cap_init () ;
 scalar_t__ cap_limit_set (int *,int *) ;
 void* cap_service_open (int *,char*) ;
 int * capllflags ;
 int * capscript ;
 int * capsendmsg ;
 int * capsyslog ;
 int fflag ;
 int nvlist_add_string_array (int *,char*,char const* const*,int) ;
 int * nvlist_create (int ) ;
 char const* const otherconf_script ;
 char const* const resolvconf_script ;

__attribute__((used)) static int
init_capabilities(void)
{
 return (0);
}
