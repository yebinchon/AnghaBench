
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration {unsigned int entries_size; int rwlock; struct configuration* entries; struct configuration* socket_path; struct configuration* pidfile_path; } ;


 int TRACE_IN (void (*) (struct configuration*)) ;
 int TRACE_OUT (void (*) (struct configuration*)) ;
 int assert (int ) ;
 int destroy_configuration_entry (struct configuration) ;
 int free (struct configuration*) ;
 int pthread_rwlock_destroy (int *) ;

void
destroy_configuration(struct configuration *config)
{
 unsigned int i;

 TRACE_IN(destroy_configuration);
 assert(config != ((void*)0));
 free(config->pidfile_path);
 free(config->socket_path);

 for (i = 0; i < config->entries_size; ++i)
  destroy_configuration_entry(config->entries[i]);
 free(config->entries);

 pthread_rwlock_destroy(&config->rwlock);
 free(config);
 TRACE_OUT(destroy_configuration);
}
