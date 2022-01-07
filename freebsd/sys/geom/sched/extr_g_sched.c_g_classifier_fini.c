
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_sched_classifier ;
 int g_unregister_classifier (int *) ;

__attribute__((used)) static inline void
g_classifier_fini(void)
{

 g_unregister_classifier(&g_sched_classifier);
}
