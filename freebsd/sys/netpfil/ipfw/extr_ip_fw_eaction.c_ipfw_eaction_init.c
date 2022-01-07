
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;


 int EACTION_DEBUG (char*) ;
 int IPFW_ADD_OBJ_REWRITER (int,int ) ;
 int create_eaction_obj (struct ip_fw_chain*,int ,int ,int *) ;
 int default_eaction ;
 int default_eaction_typename ;
 int eaction_opcodes ;

int
ipfw_eaction_init(struct ip_fw_chain *ch, int first)
{
 int error;

 error = create_eaction_obj(ch, default_eaction,
     default_eaction_typename, ((void*)0));
 if (error != 0)
  return (error);
 IPFW_ADD_OBJ_REWRITER(first, eaction_opcodes);
 EACTION_DEBUG("External actions support initialized");
 return (0);
}
