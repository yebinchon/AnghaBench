
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;


 int biozone ;
 int g_bio_run_down ;
 int g_bio_run_up ;
 int g_bioq_init (int *) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;

void
g_io_init()
{

 g_bioq_init(&g_bio_run_down);
 g_bioq_init(&g_bio_run_up);
 biozone = uma_zcreate("g_bio", sizeof (struct bio),
     ((void*)0), ((void*)0),
     ((void*)0), ((void*)0),
     0, 0);
}
