
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sigtermed ;

__attribute__((used)) static void
sighndl(int signo)
{

 sigtermed = signo;
}
