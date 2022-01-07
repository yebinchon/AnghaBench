
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hz ;
 int pause (char*,int ) ;
 int schedcpu () ;

__attribute__((used)) static void
schedcpu_thread(void)
{

 for (;;) {
  schedcpu();
  pause("-", hz);
 }
}
