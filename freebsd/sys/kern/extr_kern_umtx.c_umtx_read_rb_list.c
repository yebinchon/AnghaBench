
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umutex32 {uintptr_t m_rb_lnk; } ;
struct umutex {uintptr_t m_rb_lnk; } ;
struct thread {int td_proc; } ;
typedef int m32 ;


 int SV_ILP32 ;
 scalar_t__ SV_PROC_FLAG (int ,int ) ;
 int memcpy (struct umutex32*,struct umutex*,int) ;

__attribute__((used)) static void
umtx_read_rb_list(struct thread *td, struct umutex *m, uintptr_t *rb_list)
{
  *rb_list = m->m_rb_lnk;
}
