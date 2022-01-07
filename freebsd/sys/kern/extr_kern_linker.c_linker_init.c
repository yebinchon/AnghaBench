
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_INIT (int *) ;
 int classes ;
 int kld_sx ;
 int linker_files ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
linker_init(void *arg)
{

 sx_init(&kld_sx, "kernel linker");
 TAILQ_INIT(&classes);
 TAILQ_INIT(&linker_files);
}
