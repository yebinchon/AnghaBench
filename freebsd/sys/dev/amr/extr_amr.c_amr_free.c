
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;
struct amr_softc {int amr_list_lock; int amr_hw_lock; struct cdev* amr_dev_t; int amr_cmd_clusters; int * amr_pass; int amr_dev; } ;
struct amr_command_cluster {int dummy; } ;


 struct amr_command_cluster* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct amr_command_cluster*,int ) ;
 int acc_link ;
 int amr_freecmd_cluster (struct amr_command_cluster*) ;
 int destroy_dev (struct cdev*) ;
 int device_delete_child (int ,int *) ;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;

void
amr_free(struct amr_softc *sc)
{
    struct amr_command_cluster *acc;


    if (sc->amr_pass != ((void*)0))
 device_delete_child(sc->amr_dev, sc->amr_pass);


    while ((acc = TAILQ_FIRST(&sc->amr_cmd_clusters)) != ((void*)0)) {
 TAILQ_REMOVE(&sc->amr_cmd_clusters, acc, acc_link);
 amr_freecmd_cluster(acc);
    }


    if( sc->amr_dev_t != (struct cdev *)((void*)0))
     destroy_dev(sc->amr_dev_t);

    if (mtx_initialized(&sc->amr_hw_lock))
 mtx_destroy(&sc->amr_hw_lock);

    if (mtx_initialized(&sc->amr_list_lock))
 mtx_destroy(&sc->amr_list_lock);
}
