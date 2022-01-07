
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int GJ_SWITCHER_WORKING ;
 int KASSERT (int,char*) ;
 int MPASS (int ) ;
 int g_journal_switcher ;
 int * g_journal_switcher_proc ;
 int g_journal_switcher_state ;
 int g_topology_assert () ;
 int kproc_create (int ,struct g_class*,int **,int ,int ,char*) ;

__attribute__((used)) static void
g_journal_start_switcher(struct g_class *mp)
{
 int error;

 g_topology_assert();
 MPASS(g_journal_switcher_proc == ((void*)0));
 g_journal_switcher_state = GJ_SWITCHER_WORKING;
 error = kproc_create(g_journal_switcher, mp, &g_journal_switcher_proc,
     0, 0, "g_journal switcher");
 KASSERT(error == 0, ("Cannot create switcher thread."));
}
