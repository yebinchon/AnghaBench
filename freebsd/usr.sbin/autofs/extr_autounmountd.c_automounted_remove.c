
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct automounted_fs {int dummy; } ;


 int TAILQ_REMOVE (int *,struct automounted_fs*,int ) ;
 int af_next ;
 int automounted ;
 int free (struct automounted_fs*) ;

__attribute__((used)) static void
automounted_remove(struct automounted_fs *af)
{

 TAILQ_REMOVE(&automounted, af, af_next);
 free(af);
}
