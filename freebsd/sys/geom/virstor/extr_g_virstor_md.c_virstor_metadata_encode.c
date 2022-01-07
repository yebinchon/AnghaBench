
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_virstor_metadata {int flags; int chunk_reserved; int chunk_next; int chunk_count; int provsize; int no; int provider; int md_count; int md_id; int md_chunk_size; int md_virsize; int md_name; int md_version; int md_magic; } ;
typedef int bin_stream_t ;


 int bs_open (int *,unsigned char*) ;
 int bs_write_buf (int *,int ,int) ;
 int bs_write_u16 (int *,int ) ;
 int bs_write_u32 (int *,int ) ;
 int bs_write_u64 (int *,int ) ;

void
virstor_metadata_encode(struct g_virstor_metadata *md, unsigned char *data)
{
 bin_stream_t bs;

 bs_open(&bs, data);

 bs_write_buf(&bs, md->md_magic, sizeof(md->md_magic));
 bs_write_u32(&bs, md->md_version);
 bs_write_buf(&bs, md->md_name, sizeof(md->md_name));
 bs_write_u64(&bs, md->md_virsize);
 bs_write_u32(&bs, md->md_chunk_size);
 bs_write_u32(&bs, md->md_id);
 bs_write_u16(&bs, md->md_count);

 bs_write_buf(&bs, md->provider, sizeof(md->provider));
 bs_write_u16(&bs, md->no);
 bs_write_u64(&bs, md->provsize);
 bs_write_u32(&bs, md->chunk_count);
 bs_write_u32(&bs, md->chunk_next);
 bs_write_u16(&bs, md->chunk_reserved);
 bs_write_u16(&bs, md->flags);
}
