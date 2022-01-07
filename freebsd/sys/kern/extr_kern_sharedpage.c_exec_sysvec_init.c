
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sysentvec {int sv_flags; scalar_t__ sv_shared_page_base; scalar_t__ sv_timekeep_base; int sv_sigcode; int * sv_szsigcode; scalar_t__ sv_sigcode_base; int sv_shared_page_obj; } ;
struct TYPE_6__ {scalar_t__ sv_timekeep_off; } ;
struct TYPE_5__ {scalar_t__ sv_timekeep_off; } ;


 int KASSERT (int ,char*) ;
 int SV_ABI_FREEBSD ;
 int SV_ABI_MASK ;
 int SV_ILP32 ;
 int SV_SHP ;
 int SV_TIMEKEEP ;
 TYPE_1__* alloc_sv_tk () ;
 TYPE_2__* alloc_sv_tk_compat32 () ;
 TYPE_2__* compat32_svtk ;
 TYPE_1__* host_svtk ;
 scalar_t__ shared_page_fill (int ,int,int ) ;
 int shared_page_obj ;

void
exec_sysvec_init(void *param)
{
 struct sysentvec *sv;

 sv = (struct sysentvec *)param;
 if ((sv->sv_flags & SV_SHP) == 0)
  return;
 sv->sv_shared_page_obj = shared_page_obj;
 sv->sv_sigcode_base = sv->sv_shared_page_base +
     shared_page_fill(*(sv->sv_szsigcode), 16, sv->sv_sigcode);
 if ((sv->sv_flags & SV_ABI_MASK) != SV_ABI_FREEBSD)
  return;
 if ((sv->sv_flags & SV_TIMEKEEP) != 0) {
   KASSERT(host_svtk == ((void*)0), ("Host already registered"));
   host_svtk = alloc_sv_tk();
   sv->sv_timekeep_base = sv->sv_shared_page_base +
       host_svtk->sv_timekeep_off;



 }
}
