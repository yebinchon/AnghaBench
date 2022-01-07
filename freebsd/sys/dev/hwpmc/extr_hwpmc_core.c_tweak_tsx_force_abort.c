
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t u_int ;


 int MSR_TSX_FORCE_ABORT ;
 int wrmsr (int ,uintptr_t) ;

__attribute__((used)) static void
tweak_tsx_force_abort(void *arg)
{
 u_int val;

 val = (uintptr_t)arg;
 wrmsr(MSR_TSX_FORCE_ABORT, val);
}
