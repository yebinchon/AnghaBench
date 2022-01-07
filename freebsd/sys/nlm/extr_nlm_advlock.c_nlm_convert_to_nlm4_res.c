
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stat; } ;
struct nlm_res {TYPE_2__ stat; int cookie; } ;
struct TYPE_3__ {int stat; } ;
struct nlm4_res {TYPE_1__ stat; int cookie; } ;
typedef enum nlm4_stats { ____Placeholder_nlm4_stats } nlm4_stats ;



__attribute__((used)) static void
nlm_convert_to_nlm4_res(struct nlm4_res *dst, struct nlm_res *src)
{
 dst->cookie = src->cookie;
 dst->stat.stat = (enum nlm4_stats) src->stat.stat;
}
