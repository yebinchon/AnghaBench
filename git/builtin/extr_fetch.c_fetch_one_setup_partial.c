
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct remote {int name; } ;
struct TYPE_4__ {scalar_t__ choice; scalar_t__ no_filter; } ;


 TYPE_1__ filter_options ;
 int has_promisor_remote () ;
 int partial_clone_get_default_filter_spec (TYPE_1__*,int ) ;
 int partial_clone_register (int ,TYPE_1__*) ;

__attribute__((used)) static inline void fetch_one_setup_partial(struct remote *remote)
{




 if (filter_options.no_filter)
  return;





 if (!has_promisor_remote() && !filter_options.choice)
  return;







 if (filter_options.choice) {
  partial_clone_register(remote->name, &filter_options);
  return;
 }






 if (!filter_options.choice)
  partial_clone_get_default_filter_spec(&filter_options, remote->name);
 return;
}
