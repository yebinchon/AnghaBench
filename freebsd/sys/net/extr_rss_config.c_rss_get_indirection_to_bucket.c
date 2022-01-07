
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int rss_mask ;

u_int
rss_get_indirection_to_bucket(u_int index)
{

 return (index & rss_mask);
}
