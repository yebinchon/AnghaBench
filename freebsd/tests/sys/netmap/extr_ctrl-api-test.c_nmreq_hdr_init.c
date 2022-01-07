
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_header {int nr_name; int nr_version; } ;


 int NETMAP_API ;
 int memset (struct nmreq_header*,int ,int) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static void
nmreq_hdr_init(struct nmreq_header *hdr, const char *ifname)
{
 memset(hdr, 0, sizeof(*hdr));
 hdr->nr_version = NETMAP_API;
 strncpy(hdr->nr_name, ifname, sizeof(hdr->nr_name) - 1);
}
