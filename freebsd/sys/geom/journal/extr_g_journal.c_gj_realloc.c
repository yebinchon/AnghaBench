
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MIN (size_t,size_t) ;
 int M_JOURNAL ;
 int M_WAITOK ;
 int bcopy (void*,void*,int ) ;
 int g_journal_cache_mtx ;
 size_t g_journal_cache_used ;
 int gj_free (void*,size_t) ;
 void* gj_malloc (size_t,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 void* realloc (void*,size_t,int ,int ) ;

__attribute__((used)) static void *
gj_realloc(void *p, size_t size, size_t oldsize)
{
 void *np;


 mtx_lock(&g_journal_cache_mtx);
 g_journal_cache_used -= oldsize;
 g_journal_cache_used += size;
 mtx_unlock(&g_journal_cache_mtx);
 np = realloc(p, size, M_JOURNAL, M_WAITOK);





 return (np);
}
