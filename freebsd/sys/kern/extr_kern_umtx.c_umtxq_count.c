
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtxq_queue {int length; } ;
struct umtx_key {int dummy; } ;


 int UMTXQ_LOCKED_ASSERT (int ) ;
 int UMTX_SHARED_QUEUE ;
 int umtxq_getchain (struct umtx_key*) ;
 struct umtxq_queue* umtxq_queue_lookup (struct umtx_key*,int ) ;

__attribute__((used)) static int
umtxq_count(struct umtx_key *key)
{
 struct umtxq_queue *uh;

 UMTXQ_LOCKED_ASSERT(umtxq_getchain(key));
 uh = umtxq_queue_lookup(key, UMTX_SHARED_QUEUE);
 if (uh != ((void*)0))
  return (uh->length);
 return (0);
}
