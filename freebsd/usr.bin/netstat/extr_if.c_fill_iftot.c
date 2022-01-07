
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iftot {int ift_co; int ift_ob; int ift_od; int ift_oe; int ift_op; int ift_ib; int ift_id; int ift_ie; int ift_ip; } ;
struct ifaddrs {int ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_LINK ;
 int EX_DATAERR ;
 int EX_OSERR ;
 scalar_t__ IFA_STAT (int ) ;
 int bzero (struct iftot*,int) ;
 int collisions ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 int ibytes ;
 int ierrors ;
 scalar_t__ interface ;
 int ipackets ;
 int iqdrops ;
 int obytes ;
 int oerrors ;
 int opackets ;
 int oqdrops ;
 scalar_t__ strcmp (int ,scalar_t__) ;
 int xo_err (int ,char*,...) ;

__attribute__((used)) static void
fill_iftot(struct iftot *st)
{
 struct ifaddrs *ifap, *ifa;
 bool found = 0;

 if (getifaddrs(&ifap) != 0)
  xo_err(EX_OSERR, "getifaddrs");

 bzero(st, sizeof(*st));

 for (ifa = ifap; ifa; ifa = ifa->ifa_next) {
  if (ifa->ifa_addr->sa_family != AF_LINK)
   continue;
  if (interface) {
   if (strcmp(ifa->ifa_name, interface) == 0)
    found = 1;
   else
    continue;
  }

  st->ift_ip += IFA_STAT(ipackets);
  st->ift_ie += IFA_STAT(ierrors);
  st->ift_id += IFA_STAT(iqdrops);
  st->ift_ib += IFA_STAT(ibytes);
  st->ift_op += IFA_STAT(opackets);
  st->ift_oe += IFA_STAT(oerrors);
  st->ift_od += IFA_STAT(oqdrops);
  st->ift_ob += IFA_STAT(obytes);
   st->ift_co += IFA_STAT(collisions);
 }

 if (interface && found == 0)
  xo_err(EX_DATAERR, "interface %s not found", interface);

 freeifaddrs(ifap);
}
