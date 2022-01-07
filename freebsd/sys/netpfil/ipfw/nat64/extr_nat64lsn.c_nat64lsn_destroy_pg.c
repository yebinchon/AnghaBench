
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat64lsn_pg {int chunks_count; struct nat64lsn_pg** freemask_chunk; struct nat64lsn_pg** states_chunk; struct nat64lsn_pg* states; } ;


 int M_NAT64LSN ;
 int free (struct nat64lsn_pg**,int ) ;
 int nat64lsn_pg_zone ;
 int nat64lsn_state_zone ;
 int uma_zfree (int ,struct nat64lsn_pg*) ;

__attribute__((used)) static void
nat64lsn_destroy_pg(struct nat64lsn_pg *pg)
{
 int i;

 if (pg->chunks_count == 1) {
  uma_zfree(nat64lsn_state_zone, pg->states);
 } else {
  for (i = 0; i < pg->chunks_count; i++)
   uma_zfree(nat64lsn_state_zone, pg->states_chunk[i]);
  free(pg->states_chunk, M_NAT64LSN);
  free(pg->freemask_chunk, M_NAT64LSN);
 }
 uma_zfree(nat64lsn_pg_zone, pg);
}
