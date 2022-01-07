
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int sbintime_t ;


 int callout_hash (int ) ;
 int callwheelmask ;

__attribute__((used)) static inline u_int
callout_get_bucket(sbintime_t sbt)
{

 return (callout_hash(sbt) & callwheelmask);
}
