
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dns_srvinfo {unsigned int priority; } ;



__attribute__((used)) static int
srv_priority_cmp(const void *a, const void *b)
{
 const struct dns_srvinfo *da, *db;
 unsigned int r, l;

 da = *(struct dns_srvinfo * const *)a;
 db = *(struct dns_srvinfo * const *)b;

 l = da->priority;
 r = db->priority;

 return ((l > r) - (l < r));
}
