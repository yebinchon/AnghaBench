
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CMS_MSG_CONFIG ;
 int CMS_TRACE_BASE_ADDR ;
 int CMS_TRACE_CONFIG ;
 int CMS_TRACE_LIMIT_ADDR ;
 int nlm_read_cms_reg (int,int ) ;
 int nlm_write_cms_reg (int,int ,int) ;

void nlm_cms_trace_setup(uint64_t base, int en, uint64_t trace_base,
    uint64_t trace_limit, int match_dstid_en,
    int dst_id, int match_srcid_en, int src_id,
    int wrap)
{
 uint64_t val;

 nlm_write_cms_reg(base, CMS_TRACE_BASE_ADDR, trace_base);
 nlm_write_cms_reg(base, CMS_TRACE_LIMIT_ADDR, trace_limit);

 val = nlm_read_cms_reg(base, CMS_TRACE_CONFIG);
 val |= (((uint64_t)match_dstid_en << 39) |
  ((dst_id & 0xfff) << 24) |
  (match_srcid_en << 23) |
  ((src_id & 0xfff) << 8) |
  (wrap << 1) |
  (en << 0));
 nlm_write_cms_reg(base, CMS_MSG_CONFIG, val);
}
