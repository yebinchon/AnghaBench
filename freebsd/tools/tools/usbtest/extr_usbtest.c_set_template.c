
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int template ;


 int errno ;
 int printf (char*,int,int) ;
 int sysctlbyname (char*,int *,int *,int*,int) ;

__attribute__((used)) static void
set_template(int template)
{
 int error;

 error = sysctlbyname("hw.usb.template", ((void*)0), ((void*)0),
     &template, sizeof(template));

 if (error != 0) {
  printf("WARNING: Could not set USB template "
      "to %d (error=%d)\n", template, errno);
 }
}
