
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_long ;
struct TYPE_3__ {int rm_so; } ;
typedef TYPE_1__ regmatch_t ;


 scalar_t__ UINT16_MAX ;
 int errx (int,char*,scalar_t__) ;
 scalar_t__ strtoul (char const*,int *,int) ;

__attribute__((used)) static uint16_t
parse_vf_num(const char *key, regmatch_t *matches)
{
 u_long vf_num;

 vf_num = strtoul(key + matches[1].rm_so, ((void*)0), 10);

 if (vf_num > UINT16_MAX)
  errx(1, "VF number %lu is too large to be valid",
      vf_num);

 return (vf_num);
}
