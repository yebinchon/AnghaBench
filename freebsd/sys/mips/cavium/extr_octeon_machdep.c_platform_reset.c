
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_CIU_SOFT_RST ;
 int cvmx_write_csr (int ,int) ;

void
platform_reset(void)
{
 cvmx_write_csr(CVMX_CIU_SOFT_RST, 1);
}
