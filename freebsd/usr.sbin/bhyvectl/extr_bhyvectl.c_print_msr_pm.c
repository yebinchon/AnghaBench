
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 char* msr_name (int ) ;
 int printf (char*,char*,int,char,char) ;

__attribute__((used)) static inline void
print_msr_pm(uint64_t msr, int vcpu, int readable, int writeable)
{

 if (readable || writeable) {
  printf("%-20s[%d]\t\t%c%c\n", msr_name(msr), vcpu,
   readable ? 'R' : '-', writeable ? 'W' : '-');
 }
}
