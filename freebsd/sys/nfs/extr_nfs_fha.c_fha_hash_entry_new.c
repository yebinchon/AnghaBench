
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct fha_hash_entry {int threads; scalar_t__ num_threads; scalar_t__ num_exclusive; scalar_t__ num_rw; int fh; } ;


 int LIST_INIT (int *) ;
 int M_NFS_FHA ;
 int M_WAITOK ;
 struct fha_hash_entry* malloc (int,int ,int ) ;

__attribute__((used)) static struct fha_hash_entry *
fha_hash_entry_new(u_int64_t fh)
{
 struct fha_hash_entry *e;

 e = malloc(sizeof(*e), M_NFS_FHA, M_WAITOK);
 e->fh = fh;
 e->num_rw = 0;
 e->num_exclusive = 0;
 e->num_threads = 0;
 LIST_INIT(&e->threads);

 return (e);
}
