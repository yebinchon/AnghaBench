
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLIST_INIT (int *) ;
 int free_gtask ;
 int in6m_free_list ;
 int in6m_release_task ;
 int taskqgroup_config_gtask_init (int *,int *,int ,char*) ;

__attribute__((used)) static void in6m_init(void)
{
 SLIST_INIT(&in6m_free_list);
 taskqgroup_config_gtask_init(((void*)0), &free_gtask, in6m_release_task, "in6m release task");
}
