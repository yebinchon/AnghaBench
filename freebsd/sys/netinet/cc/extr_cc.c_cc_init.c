
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CC_LIST_LOCK_INIT () ;
 int STAILQ_INIT (int *) ;
 int cc_list ;

__attribute__((used)) static void
cc_init(void)
{
 CC_LIST_LOCK_INIT();
 STAILQ_INIT(&cc_list);
}
