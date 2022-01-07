
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ GXEMUL_CONS_BASE ;
 scalar_t__ GXEMUL_PUTGETCHAR_OFF ;
 int mips_ioread_uint8 (int ) ;
 int mips_phys_to_uncached (scalar_t__) ;

__attribute__((used)) static inline uint8_t
gxemul_cons_data_read(void)
{

 return (mips_ioread_uint8(mips_phys_to_uncached(GXEMUL_CONS_BASE +
     GXEMUL_PUTGETCHAR_OFF)));
}
