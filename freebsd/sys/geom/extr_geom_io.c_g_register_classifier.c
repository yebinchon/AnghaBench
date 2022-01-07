
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_classifier_hook {int dummy; } ;


 int TAILQ_INSERT_TAIL (int *,struct g_classifier_hook*,int ) ;
 int g_bio_run_down ;
 int g_bioq_lock (int *) ;
 int g_bioq_unlock (int *) ;
 int g_classifier_tailq ;
 int link ;

int
g_register_classifier(struct g_classifier_hook *hook)
{

 g_bioq_lock(&g_bio_run_down);
 TAILQ_INSERT_TAIL(&g_classifier_tailq, hook, link);
 g_bioq_unlock(&g_bio_run_down);

 return (0);
}
