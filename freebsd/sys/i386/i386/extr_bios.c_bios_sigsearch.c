
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef char u_char ;


 scalar_t__ BIOS_PADDRTOVADDR (scalar_t__) ;
 scalar_t__ BIOS_SIZE ;
 scalar_t__ BIOS_START ;
 scalar_t__ BIOS_VADDRTOPADDR (char*) ;
 int bcmp (char*,char*,int) ;

u_int32_t
bios_sigsearch(u_int32_t start, u_char *sig, int siglen, int paralen, int sigofs)
{
    u_char *sp, *end;


    if ((start >= BIOS_START) && (start <= (BIOS_START + BIOS_SIZE))) {
 sp = (char *)BIOS_PADDRTOVADDR(start);
    } else if (start == 0) {
 sp = (char *)BIOS_PADDRTOVADDR(BIOS_START);
    } else {
 return 0;
    }


    end = (u_char *)BIOS_PADDRTOVADDR(BIOS_START + BIOS_SIZE);


    while ((sp + sigofs + siglen) < end) {


 if (!bcmp(sp + sigofs, sig, siglen)) {

     return((u_int32_t)BIOS_VADDRTOPADDR(sp));
 }
 sp += paralen;
    }
    return(0);
}
