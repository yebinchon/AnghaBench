
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;
 int warnx (char*) ;

__attribute__((used)) static void
check_usb_pf_sysctl(void)
{
 int error;
 int no_pf_val = 0;
 size_t no_pf_len = sizeof(int);



 error = sysctlbyname("hw.usb.no_pf", &no_pf_val,
     &no_pf_len, ((void*)0), 0);
 if (error == 0 && no_pf_val != 0) {
  warnx("The USB packet filter might be disabled.");
  warnx("See the \"hw.usb.no_pf\" sysctl for more information.");
 }
}
