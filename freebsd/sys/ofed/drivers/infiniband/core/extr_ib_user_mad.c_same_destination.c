
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_user_mad_hdr {scalar_t__ lid; int gid; scalar_t__ grh_present; } ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int same_destination(struct ib_user_mad_hdr *hdr1,
       struct ib_user_mad_hdr *hdr2)
{
 if (!hdr1->grh_present && !hdr2->grh_present)
    return (hdr1->lid == hdr2->lid);

 if (hdr1->grh_present && hdr2->grh_present)
    return !memcmp(hdr1->gid, hdr2->gid, 16);

 return 0;
}
