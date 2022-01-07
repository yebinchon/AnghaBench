
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int sbintime_t ;


 int CC_HASH_SHIFT ;

__attribute__((used)) static inline u_int
callout_hash(sbintime_t sbt)
{

 return (sbt >> (32 - CC_HASH_SHIFT));
}
