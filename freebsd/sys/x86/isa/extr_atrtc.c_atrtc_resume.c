
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int atrtc_restore () ;

__attribute__((used)) static int
atrtc_resume(device_t dev)
{

 atrtc_restore();
 return(0);
}
