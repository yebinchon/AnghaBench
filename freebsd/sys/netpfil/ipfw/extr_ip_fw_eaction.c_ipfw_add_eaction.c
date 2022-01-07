
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct ip_fw_chain {int dummy; } ;
typedef int ipfw_eaction_t ;


 int EACTION_DEBUG (char*,char const*,scalar_t__) ;
 int create_eaction_obj (struct ip_fw_chain*,int ,char const*,scalar_t__*) ;
 scalar_t__ ipfw_check_object_name_generic (char const*) ;

uint16_t
ipfw_add_eaction(struct ip_fw_chain *ch, ipfw_eaction_t handler,
    const char *name)
{
 uint16_t eaction_id;

 eaction_id = 0;
 if (ipfw_check_object_name_generic(name) == 0) {
  create_eaction_obj(ch, handler, name, &eaction_id);
  EACTION_DEBUG("Registered external action '%s' with id %u",
      name, eaction_id);
 }
 return (eaction_id);
}
