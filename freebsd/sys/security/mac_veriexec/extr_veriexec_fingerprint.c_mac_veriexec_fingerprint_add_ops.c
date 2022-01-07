
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_veriexec_fpops {char* type; scalar_t__ digest_len; scalar_t__ context_size; int * final; int * update; int * init; } ;


 int EEXIST ;
 int EINVAL ;
 int LIST_INSERT_HEAD (int *,struct mac_veriexec_fpops*,int ) ;
 int entries ;
 int fpops_list ;
 scalar_t__ mac_veriexec_fingerprint_lookup_ops (char*) ;
 int printf (char*,char*) ;

int
mac_veriexec_fingerprint_add_ops(struct mac_veriexec_fpops *fpops)
{


 if (fpops->type == ((void*)0) || fpops->digest_len == 0 ||
     fpops->context_size == 0 || fpops->init == ((void*)0) ||
     fpops->update == ((void*)0) || fpops->final == ((void*)0))
  return (EINVAL);


 if (mac_veriexec_fingerprint_lookup_ops(fpops->type))
  return (EEXIST);


 LIST_INSERT_HEAD(&fpops_list, fpops, entries);

 printf("MAC/veriexec fingerprint module loaded: %s\n", fpops->type);

 return (0);
}
