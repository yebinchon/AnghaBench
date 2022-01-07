
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int parse_ipaddr (char const*,int *,int *) ;
 int parse_val_mask_param (char const*,int *,int *,int) ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static int
parse_trace_param(const char *s, uint32_t *val, uint32_t *mask)
{
 return strchr(s, '.') ? parse_ipaddr(s, val, mask) :
    parse_val_mask_param(s, val, mask, 0xffffffffU);
}
