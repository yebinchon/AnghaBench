
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int microuptime (struct timeval*) ;

__attribute__((used)) static __inline uint64_t qla_get_usec_timestamp(void)
{
 struct timeval tv;

 microuptime(&tv);

 return ((uint64_t)(((uint64_t)tv.tv_sec) * 1000000 + tv.tv_usec));
}
