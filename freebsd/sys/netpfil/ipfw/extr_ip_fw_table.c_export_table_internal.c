
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_config {int dummy; } ;
struct namedobj_instance {int dummy; } ;
struct named_object {int dummy; } ;
struct dump_table_args {int ch; int sd; } ;
typedef int ipfw_xtable_info ;


 int KASSERT (int ,char*) ;
 int export_table_info (int ,struct table_config*,int *) ;
 scalar_t__ ipfw_get_sopt_space (int ,int) ;

__attribute__((used)) static int
export_table_internal(struct namedobj_instance *ni, struct named_object *no,
    void *arg)
{
 ipfw_xtable_info *i;
 struct dump_table_args *dta;

 dta = (struct dump_table_args *)arg;

 i = (ipfw_xtable_info *)ipfw_get_sopt_space(dta->sd, sizeof(*i));
 KASSERT(i != ((void*)0), ("previously checked buffer is not enough"));

 export_table_info(dta->ch, (struct table_config *)no, i);
 return (0);
}
