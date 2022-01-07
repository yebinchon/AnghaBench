
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int MTX_DEF ;
 int bioq_init (int *) ;
 int g_multipath_kt ;
 int gmtbq ;
 int gmtbq_mtx ;
 int kproc_create (int ,struct g_class*,int *,int ,int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
g_multipath_init(struct g_class *mp)
{
 bioq_init(&gmtbq);
 mtx_init(&gmtbq_mtx, "gmtbq", ((void*)0), MTX_DEF);
 kproc_create(g_multipath_kt, mp, ((void*)0), 0, 0, "g_mp_kt");
}
