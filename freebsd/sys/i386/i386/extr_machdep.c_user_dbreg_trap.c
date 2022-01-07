
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int register_t ;
typedef scalar_t__ caddr_t ;


 int DBREG_DR6_BMASK ;
 scalar_t__ VM_MAXUSER_ADDRESS ;
 scalar_t__ rdr0 () ;
 scalar_t__ rdr1 () ;
 scalar_t__ rdr2 () ;
 scalar_t__ rdr3 () ;
 int rdr7 () ;

int
user_dbreg_trap(register_t dr6)
{
        u_int32_t dr7;
        u_int32_t bp;
        int nbp;
        caddr_t addr[4];
        int i;

        bp = dr6 & DBREG_DR6_BMASK;
        if (bp == 0) {




                return 0;
        }

        dr7 = rdr7();
        if ((dr7 & 0x000000ff) == 0) {





                return 0;
        }

        nbp = 0;






        if (bp & 0x01) {
                addr[nbp++] = (caddr_t)rdr0();
        }
        if (bp & 0x02) {
                addr[nbp++] = (caddr_t)rdr1();
        }
        if (bp & 0x04) {
                addr[nbp++] = (caddr_t)rdr2();
        }
        if (bp & 0x08) {
                addr[nbp++] = (caddr_t)rdr3();
        }

        for (i = 0; i < nbp; i++) {
                if (addr[i] < (caddr_t)VM_MAXUSER_ADDRESS) {



                        return nbp;
                }
        }




        return 0;
}
