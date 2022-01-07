
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shminfo {int shmall; int shmseg; int shmmni; int shmmin; int shmmax; } ;


 int printf (char*,...) ;

void
print_kshmtotal(struct shminfo local_shminfo)
{

 printf("shminfo:\n");
 printf("\tshmmax: %12lu\t(max shared memory segment size)\n",
     local_shminfo.shmmax);
 printf("\tshmmin: %12lu\t(min shared memory segment size)\n",
     local_shminfo.shmmin);
 printf("\tshmmni: %12lu\t(max number of shared memory identifiers)\n",
     local_shminfo.shmmni);
 printf("\tshmseg: %12lu\t(max shared memory segments per process)\n",
     local_shminfo.shmseg);
 printf("\tshmall: %12lu\t(max amount of shared memory in pages)\n\n",
     local_shminfo.shmall);
}
