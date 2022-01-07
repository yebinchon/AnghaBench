
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int cap_channel_t ;


 int * cap_xfer_nvlist (int *,int *) ;
 scalar_t__ dnvlist_get_number (int *,char*,int ) ;
 int errno ;
 int nvlist_add_string (int *,char*,char*) ;
 int * nvlist_create (int ) ;
 int nvlist_destroy (int *) ;
 scalar_t__ nvlist_get_number (int *,char*) ;
 int script_wait (int*) ;

int
cap_script_wait(cap_channel_t *cap, int *statusp)
{
 (void)cap;
 return (script_wait(statusp));

}
