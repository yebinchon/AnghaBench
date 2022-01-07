
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __predict_false (int ) ;
 int do_free_callbacks () ;
 int * gnttab_free_callback_list ;

__attribute__((used)) static inline void
check_free_callbacks(void)
{
 if (__predict_false(gnttab_free_callback_list != ((void*)0)))
  do_free_callbacks();
}
