
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP6REASS_NHASH ;
 int V_ip6_maxfragbucketsize ;
 int V_ip6_maxfragpackets ;
 int imax (int,int) ;

__attribute__((used)) static void
frag6_set_bucketsize(void)
{
 int i;

 if ((i = V_ip6_maxfragpackets) > 0)
  V_ip6_maxfragbucketsize = imax(i / (IP6REASS_NHASH / 2), 1);
}
