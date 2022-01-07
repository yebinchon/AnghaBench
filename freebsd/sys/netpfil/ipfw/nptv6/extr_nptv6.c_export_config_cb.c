
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nptv6_dump_arg {int ch; int sd; } ;
struct nptv6_cfg {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
typedef int ipfw_nptv6_cfg ;


 scalar_t__ ipfw_get_sopt_space (int ,int) ;
 int nptv6_export_config (int ,struct nptv6_cfg*,int *) ;

__attribute__((used)) static int
export_config_cb(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{
 struct nptv6_dump_arg *da = (struct nptv6_dump_arg *)arg;
 ipfw_nptv6_cfg *uc;

 uc = (ipfw_nptv6_cfg *)ipfw_get_sopt_space(da->sd, sizeof(*uc));
 nptv6_export_config(da->ch, (struct nptv6_cfg *)no, uc);
 return (0);
}
