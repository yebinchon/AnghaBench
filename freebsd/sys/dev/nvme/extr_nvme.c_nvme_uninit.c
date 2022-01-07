
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nvme_request_zone ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static void
nvme_uninit(void)
{
 uma_zdestroy(nvme_request_zone);
}
