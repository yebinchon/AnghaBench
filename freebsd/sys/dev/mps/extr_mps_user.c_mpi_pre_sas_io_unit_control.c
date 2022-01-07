
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_usr_command {int dummy; } ;
struct mps_command {scalar_t__ cm_sglsize; int * cm_sge; } ;



__attribute__((used)) static int
mpi_pre_sas_io_unit_control(struct mps_command *cm,
        struct mps_usr_command *cmd)
{

 cm->cm_sge = ((void*)0);
 cm->cm_sglsize = 0;
 return (0);
}
