
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amr_command {int dummy; } ;


 int amr_enqueue_free (struct amr_command*) ;
 int debug_called (int) ;

void
amr_releasecmd(struct amr_command *ac)
{
    debug_called(3);

    amr_enqueue_free(ac);
}
