
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMCI ;
 int mca_process_records (int ) ;
 scalar_t__ mca_scan (int ,int *) ;

void
cmc_intr(void)
{







 if (mca_scan(CMCI, ((void*)0)) != 0)
  mca_process_records(CMCI);
}
