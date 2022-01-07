
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (int ) ;
 int refuse_unconfigured_deny_msg ;
 int rp_error (char*,int ) ;

__attribute__((used)) static void refuse_unconfigured_deny(void)
{
 rp_error("%s", _(refuse_unconfigured_deny_msg));
}
