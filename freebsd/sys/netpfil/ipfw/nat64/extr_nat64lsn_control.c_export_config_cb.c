
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64lsn_cfg {int dummy; } ;
struct nat64_dump_arg {int ch; int sd; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct _ipfw_nat64lsn_cfg {int dummy; } ;
typedef struct _ipfw_nat64lsn_cfg ipfw_nat64lsn_cfg ;


 scalar_t__ ipfw_get_sopt_space (int ,int) ;
 int nat64lsn_export_config (int ,struct nat64lsn_cfg*,struct _ipfw_nat64lsn_cfg*) ;

__attribute__((used)) static int
export_config_cb(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{
 struct nat64_dump_arg *da = (struct nat64_dump_arg *)arg;
 ipfw_nat64lsn_cfg *uc;

 uc = (struct _ipfw_nat64lsn_cfg *)ipfw_get_sopt_space(da->sd,
     sizeof(*uc));
 nat64lsn_export_config(da->ch, (struct nat64lsn_cfg *)no, uc);
 return (0);
}
