
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_smp {int * return_path; int * initial_path; int * data; scalar_t__ dr_dlid; scalar_t__ dr_slid; int mkey; int attr_mod; scalar_t__ attr_id; int tid; int hop_cnt; int hop_ptr; scalar_t__ status; int method; int mgmt_class; int class_version; int base_version; } ;


 int IB_SMP_DATA_SIZE ;
 int IB_SMP_MAX_PATH_HOPS ;
 int be16_to_cpu (scalar_t__) ;
 int be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 scalar_t__ data ;
 int get_class_name (int ) ;
 int get_method_name (int ,int ) ;
 int get_smp_attr (scalar_t__) ;
 int print_status_details (int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void print_smp(struct ib_smp *smp)
{
 int i;

 printk("MAD version....0x%01x\n", smp->base_version);
 printk("Class..........0x%01x (%s)\n", smp->mgmt_class,
        get_class_name(smp->mgmt_class));
 printk("Class version..0x%01x\n", smp->class_version);
 printk("Method.........0x%01x (%s)\n", smp->method,
        get_method_name(smp->mgmt_class, smp->method));
 printk("Status.........0x%02x\n", be16_to_cpu(smp->status));
 if (smp->status)
  print_status_details(be16_to_cpu(smp->status));
 printk("Hop pointer....0x%01x\n", smp->hop_ptr);
 printk("Hop counter....0x%01x\n", smp->hop_cnt);
 printk("Trans ID.......0x%llx\n",
  (unsigned long long)be64_to_cpu(smp->tid));
 printk("Attr ID........0x%02x (%s)\n", be16_to_cpu(smp->attr_id),
  get_smp_attr(smp->attr_id));
 printk("Attr modifier..0x%04x\n", be32_to_cpu(smp->attr_mod));

 printk("Mkey...........0x%llx\n",
  (unsigned long long)be64_to_cpu(smp->mkey));
 printk("DR SLID........0x%02x\n", be16_to_cpu(smp->dr_slid));
 printk("DR DLID........0x%02x", be16_to_cpu(smp->dr_dlid));

 if (data) {
  for (i = 0; i < IB_SMP_DATA_SIZE; i++) {
   if (i % 16 == 0)
    printk("\nSMP Data.......");
   printk("%01x ", smp->data[i]);
  }
  for (i = 0; i < IB_SMP_MAX_PATH_HOPS; i++) {
   if (i % 16 == 0)
    printk("\nInitial path...");
   printk("%01x ", smp->initial_path[i]);
  }
  for (i = 0; i < IB_SMP_MAX_PATH_HOPS; i++) {
   if (i % 16 == 0)
    printk("\nReturn path....");
   printk("%01x ", smp->return_path[i]);
  }
 }
 printk("\n");
}
