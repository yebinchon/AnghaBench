
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_bucket_t ;
struct TYPE_10__ {scalar_t__ ub_cnt; int * ub_bucket; int ub_entries; } ;
struct TYPE_9__ {scalar_t__ (* uz_import ) (int ,int *,int ,int,int) ;scalar_t__ (* uz_init ) (int ,int ,int) ;int uz_fails; int uz_arg; int (* uz_release ) (int ,int *,int) ;int uz_size; } ;


 int CTR1 (int ,char*,int) ;
 int KTR_UMA ;
 int MIN (int,int ) ;
 int M_NOVM ;
 int M_NOWAIT ;
 int UMA_ANYDOMAIN ;
 scalar_t__ VM_DOMAIN_EMPTY (int) ;
 TYPE_2__* bucket_alloc (TYPE_1__*,void*,int) ;
 int bucket_free (TYPE_1__*,TYPE_2__*,void*) ;
 int bzero (int *,int) ;
 int counter_u64_add (int ,int) ;
 scalar_t__ stub1 (int ,int *,int ,int,int) ;
 scalar_t__ stub2 (int ,int ,int) ;
 int stub3 (int ,int *,int) ;

__attribute__((used)) static uma_bucket_t
zone_alloc_bucket(uma_zone_t zone, void *udata, int domain, int flags, int max)
{
 uma_bucket_t bucket;

 CTR1(KTR_UMA, "zone_alloc:_bucket domain %d)", domain);


 if (domain != UMA_ANYDOMAIN && VM_DOMAIN_EMPTY(domain))
  domain = UMA_ANYDOMAIN;


 bucket = bucket_alloc(zone, udata, M_NOWAIT | (flags & M_NOVM));
 if (bucket == ((void*)0))
  return (((void*)0));

 bucket->ub_cnt = zone->uz_import(zone->uz_arg, bucket->ub_bucket,
     MIN(max, bucket->ub_entries), domain, flags);




 if (bucket->ub_cnt != 0 && zone->uz_init != ((void*)0)) {
  int i;

  for (i = 0; i < bucket->ub_cnt; i++)
   if (zone->uz_init(bucket->ub_bucket[i], zone->uz_size,
       flags) != 0)
    break;




  if (i != bucket->ub_cnt) {
   zone->uz_release(zone->uz_arg, &bucket->ub_bucket[i],
       bucket->ub_cnt - i);




   bucket->ub_cnt = i;
  }
 }

 if (bucket->ub_cnt == 0) {
  bucket_free(zone, bucket, udata);
  counter_u64_add(zone->uz_fails, 1);
  return (((void*)0));
 }

 return (bucket);
}
