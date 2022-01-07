
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int OF_peer (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int xref_init_done ;
 int xrefinfo_create (int ) ;
 int xreflist_lock ;

__attribute__((used)) static void
xrefinfo_init(void *unsed)
{






 mtx_init(&xreflist_lock, "OF xreflist lock", ((void*)0), MTX_DEF);
 xrefinfo_create(OF_peer(0));
 xref_init_done = 1;
}
