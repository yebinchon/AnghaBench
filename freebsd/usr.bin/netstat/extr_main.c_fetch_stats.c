
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int kreadfn_t ;


 int fetch_stats_internal (char const*,int ,void*,size_t,int ,int ) ;
 int zflag ;

int
fetch_stats(const char *sysctlname, u_long off, void *stats,
    size_t len, kreadfn_t kreadfn)
{

 return (fetch_stats_internal(sysctlname, off, stats, len, kreadfn,
    zflag));
}
