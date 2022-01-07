
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmreq_option {scalar_t__ nro_status; scalar_t__ nro_next; } ;
struct nmreq_header {scalar_t__ nr_options; } ;


 scalar_t__ EOPNOTSUPP ;

__attribute__((used)) static int
nmreq_checkoptions(struct nmreq_header *hdr)
{
 struct nmreq_option *opt;




 for (opt = (struct nmreq_option *)(uintptr_t)hdr->nr_options; opt;
      opt = (struct nmreq_option *)(uintptr_t)opt->nro_next)
  if (opt->nro_status == EOPNOTSUPP)
   return EOPNOTSUPP;

 return 0;
}
