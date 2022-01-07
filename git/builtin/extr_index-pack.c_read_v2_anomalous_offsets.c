
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct packed_git {int const num_objects; scalar_t__ index_data; } ;
struct pack_idx_option {scalar_t__ anomaly_nr; void** anomaly; int anomaly_alloc; } ;
struct TYPE_2__ {int rawsz; } ;


 int ALLOC_GROW (void**,scalar_t__,int ) ;
 int QSORT (void**,scalar_t__,int ) ;
 int check_pack_index_ptr (struct packed_git*,int const*) ;
 int cmp_uint32 ;
 void* ntohl (int const) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void read_v2_anomalous_offsets(struct packed_git *p,
          struct pack_idx_option *opts)
{
 const uint32_t *idx1, *idx2;
 uint32_t i;
 const uint32_t hashwords = the_hash_algo->rawsz / sizeof(uint32_t);


 idx1 = (((const uint32_t *)p->index_data)
  + 2
  + 256
  + hashwords * p->num_objects
  + p->num_objects
  );


 idx2 = idx1 + p->num_objects;

 for (i = 0; i < p->num_objects; i++) {
  uint32_t off = ntohl(idx1[i]);
  if (!(off & 0x80000000))
   continue;
  off = off & 0x7fffffff;
  check_pack_index_ptr(p, &idx2[off * 2]);
  if (idx2[off * 2])
   continue;





  ALLOC_GROW(opts->anomaly, opts->anomaly_nr + 1, opts->anomaly_alloc);
  opts->anomaly[opts->anomaly_nr++] = ntohl(idx2[off * 2 + 1]);
 }

 QSORT(opts->anomaly, opts->anomaly_nr, cmp_uint32);
}
