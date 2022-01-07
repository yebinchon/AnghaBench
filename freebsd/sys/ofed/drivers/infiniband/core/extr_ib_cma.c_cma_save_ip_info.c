
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct ib_cm_event {struct cma_hdr* private_data; } ;
struct cma_hdr {scalar_t__ cma_version; } ;
typedef int __be64 ;
typedef int __be16 ;


 scalar_t__ CMA_VERSION ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 scalar_t__ RDMA_PS_SDP ;
 int cma_get_ip_ver (struct cma_hdr*) ;
 int cma_port_from_service_id (int ) ;
 int cma_save_ip4_info (struct sockaddr_in*,struct sockaddr_in*,struct cma_hdr*,int ) ;
 int cma_save_ip6_info (struct sockaddr_in6*,struct sockaddr_in6*,struct cma_hdr*,int ) ;
 int htons (int ) ;
 scalar_t__ rdma_ps_from_service_id (int ) ;
 int sdp_save_ip_info (struct sockaddr*,struct sockaddr*,struct cma_hdr*,int ) ;

__attribute__((used)) static int cma_save_ip_info(struct sockaddr *src_addr,
       struct sockaddr *dst_addr,
       struct ib_cm_event *ib_event,
       __be64 service_id)
{
 struct cma_hdr *hdr;
 __be16 port;

 if (rdma_ps_from_service_id(service_id) == RDMA_PS_SDP)
  return sdp_save_ip_info(src_addr, dst_addr,
      ib_event->private_data, service_id);

 hdr = ib_event->private_data;
 if (hdr->cma_version != CMA_VERSION)
  return -EINVAL;

 port = htons(cma_port_from_service_id(service_id));

 switch (cma_get_ip_ver(hdr)) {
 case 4:
  cma_save_ip4_info((struct sockaddr_in *)src_addr,
      (struct sockaddr_in *)dst_addr, hdr, port);
  break;
 case 6:
  cma_save_ip6_info((struct sockaddr_in6 *)src_addr,
      (struct sockaddr_in6 *)dst_addr, hdr, port);
  break;
 default:
  return -EAFNOSUPPORT;
 }

 return 0;
}
