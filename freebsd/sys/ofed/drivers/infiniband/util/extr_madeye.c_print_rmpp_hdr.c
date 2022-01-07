
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_rmpp_hdr {int rmpp_type; int paylen_newwin; int seg_num; int rmpp_status; int rmpp_version; } ;




 int be32_to_cpu (int ) ;
 int get_rmpp_flags (int ) ;
 int get_rmpp_type (int) ;
 int ib_get_rmpp_flags (struct ib_rmpp_hdr*) ;
 int ib_get_rmpp_resptime (struct ib_rmpp_hdr*) ;
 int printk (char*,int,...) ;

__attribute__((used)) static void print_rmpp_hdr(struct ib_rmpp_hdr *rmpp_hdr)
{
 printk("RMPP version...0x%01x\n", rmpp_hdr->rmpp_version);
 printk("RMPP type......0x%01x (%s)\n", rmpp_hdr->rmpp_type,
        get_rmpp_type(rmpp_hdr->rmpp_type));
 printk("RMPP RRespTime.0x%01x\n", ib_get_rmpp_resptime(rmpp_hdr));
 printk("RMPP flags.....0x%01x (%s)\n", ib_get_rmpp_flags(rmpp_hdr),
        get_rmpp_flags(ib_get_rmpp_flags(rmpp_hdr)));
 printk("RMPP status....0x%01x\n", rmpp_hdr->rmpp_status);
 printk("Seg number.....0x%04x\n", be32_to_cpu(rmpp_hdr->seg_num));
 switch (rmpp_hdr->rmpp_type) {
 case 128:
  printk("Payload len....0x%04x\n",
         be32_to_cpu(rmpp_hdr->paylen_newwin));
  break;
 case 129:
  printk("New window.....0x%04x\n",
         be32_to_cpu(rmpp_hdr->paylen_newwin));
  break;
 default:
  printk("Data 2.........0x%04x\n",
         be32_to_cpu(rmpp_hdr->paylen_newwin));
  break;
 }
}
