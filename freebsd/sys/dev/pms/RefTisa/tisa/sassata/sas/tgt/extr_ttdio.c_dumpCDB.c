
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bit8 ;
typedef int bit32 ;


 int TI_DBG4 (char*) ;

void
dumpCDB(bit8 *cdb)
{
    bit32 i;
    for(i=0;i<10;i++)
    {
        TI_DBG4(("cdb[%d] 0x%x\n", i, cdb[i]));
    }
    return;
}
