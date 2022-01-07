
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64clat_dump_arg {int ch; int sd; } ;
struct nat64clat_cfg {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
typedef int ipfw_nat64clat_cfg ;


 scalar_t__ ipfw_get_sopt_space (int ,int) ;
 int nat64clat_export_config (int ,struct nat64clat_cfg*,int *) ;

__attribute__((used)) static int
export_config_cb(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{
 struct nat64clat_dump_arg *da = (struct nat64clat_dump_arg *)arg;
 ipfw_nat64clat_cfg *uc;

 uc = (ipfw_nat64clat_cfg *)ipfw_get_sopt_space(da->sd, sizeof(*uc));
 nat64clat_export_config(da->ch, (struct nat64clat_cfg *)no, uc);
 return (0);
}
