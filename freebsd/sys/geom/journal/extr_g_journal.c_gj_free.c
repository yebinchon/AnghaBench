
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct meminfo {size_t mi_size; int mi_stack; } ;


 int KASSERT (int,char*) ;
 int M_JOURNAL ;
 int free (void*,int ) ;
 int g_journal_cache_mtx ;
 size_t g_journal_cache_used ;
 int kdb_backtrace () ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int stack_print (int *) ;

__attribute__((used)) static void
gj_free(void *p, size_t size)
{




 KASSERT(p != ((void*)0), ("p=NULL"));
 KASSERT(size > 0, ("size=0"));
 mtx_lock(&g_journal_cache_mtx);
 KASSERT(g_journal_cache_used >= size, ("Freeing too much?"));
 g_journal_cache_used -= size;
 mtx_unlock(&g_journal_cache_mtx);
 free(p, M_JOURNAL);
}
