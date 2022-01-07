
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CVMX_MF_CYCLE (int ) ;

__attribute__((used)) static uint64_t
octeon_get_ticks(void)
{
 uint64_t cvmcount;

 CVMX_MF_CYCLE(cvmcount);
 return (cvmcount);
}
