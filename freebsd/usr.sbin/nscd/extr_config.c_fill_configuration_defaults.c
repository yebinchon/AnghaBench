
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration {int socket_mode; int force_unlink; size_t entries_size; int * entries; int threads_num; int query_timeout; int * pidfile_path; int * socket_path; } ;


 int DEFAULT_PIDFILE_PATH ;
 int DEFAULT_QUERY_TIMEOUT ;
 int DEFAULT_SOCKET_PATH ;
 int DEFAULT_THREADS_NUM ;
 int S_IFSOCK ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int TRACE_IN (void (*) (struct configuration*)) ;
 int TRACE_OUT (void (*) (struct configuration*)) ;
 int assert (int ) ;
 void* calloc (int,size_t) ;
 int destroy_configuration_entry (int ) ;
 int free (int *) ;
 int memcpy (int *,int ,size_t) ;
 size_t strlen (int ) ;

void
fill_configuration_defaults(struct configuration *config)
{
 size_t len, i;

 TRACE_IN(fill_configuration_defaults);
 assert(config != ((void*)0));

 if (config->socket_path != ((void*)0))
  free(config->socket_path);

 len = strlen(DEFAULT_SOCKET_PATH);
 config->socket_path = calloc(1, len + 1);
 assert(config->socket_path != ((void*)0));
 memcpy(config->socket_path, DEFAULT_SOCKET_PATH, len);

 len = strlen(DEFAULT_PIDFILE_PATH);
 config->pidfile_path = calloc(1, len + 1);
 assert(config->pidfile_path != ((void*)0));
 memcpy(config->pidfile_path, DEFAULT_PIDFILE_PATH, len);

 config->socket_mode = S_IFSOCK | S_IRUSR | S_IWUSR |
  S_IRGRP | S_IWGRP | S_IROTH | S_IWOTH;
 config->force_unlink = 1;

 config->query_timeout = DEFAULT_QUERY_TIMEOUT;
 config->threads_num = DEFAULT_THREADS_NUM;

 for (i = 0; i < config->entries_size; ++i)
  destroy_configuration_entry(config->entries[i]);
 config->entries_size = 0;

 TRACE_OUT(fill_configuration_defaults);
}
