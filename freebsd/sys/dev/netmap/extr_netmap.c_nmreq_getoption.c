
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint16_t ;
struct nmreq_option {int dummy; } ;
struct nmreq_header {scalar_t__ nr_options; } ;


 struct nmreq_option** NETMAP_REQ_OPT_MAX ;

struct nmreq_option *
nmreq_getoption(struct nmreq_header *hdr, uint16_t reqtype)
{
 struct nmreq_option **opt_tab;

 if (!hdr->nr_options)
  return ((void*)0);

 opt_tab = (struct nmreq_option **)((uintptr_t)hdr->nr_options) -
     (NETMAP_REQ_OPT_MAX + 1);
 return opt_tab[reqtype];
}
