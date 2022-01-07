
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int rss_mask ;

u_int
rss_getbucket(u_int hash)
{

 return (hash & rss_mask);
}
