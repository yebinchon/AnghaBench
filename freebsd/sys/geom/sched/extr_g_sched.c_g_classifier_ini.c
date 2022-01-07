
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_register_classifier (int *) ;
 int g_sched_classifier ;

__attribute__((used)) static inline void
g_classifier_ini(void)
{

 g_register_classifier(&g_sched_classifier);
}
