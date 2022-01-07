
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igmp_ifinfo {int igi_version; int igi_rv; int igi_qi; int igi_qri; int igi_uri; int igi_v1_timer; int igi_v2_timer; int igi_v3_timer; scalar_t__ igi_flags; } ;





 int printb (char*,scalar_t__,char*) ;
 int printf (char*,...) ;
 int vflag ;

__attribute__((used)) static void
in_ifinfo(struct igmp_ifinfo *igi)
{

 printf("\t");
 switch (igi->igi_version) {
 case 130:
 case 129:
 case 128:
  printf("igmpv%d", igi->igi_version);
  break;
 default:
  printf("igmpv?(%d)", igi->igi_version);
  break;
 }
 if (igi->igi_flags)
  printb(" flags", igi->igi_flags, "\020\1SILENT\2LOOPBACK");
 if (igi->igi_version == 128) {
  printf(" rv %u qi %u qri %u uri %u",
      igi->igi_rv, igi->igi_qi, igi->igi_qri, igi->igi_uri);
 }
 if (vflag >= 2) {
  printf(" v1timer %u v2timer %u v3timer %u",
      igi->igi_v1_timer, igi->igi_v2_timer, igi->igi_v3_timer);
 }
 printf("\n");
}
