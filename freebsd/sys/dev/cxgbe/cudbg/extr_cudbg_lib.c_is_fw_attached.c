
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cudbg_init {TYPE_1__* adap; } ;
struct TYPE_2__ {int flags; } ;


 int FW_OK ;

__attribute__((used)) static int is_fw_attached(struct cudbg_init *pdbg_init)
{

 return (pdbg_init->adap->flags & FW_OK);
}
