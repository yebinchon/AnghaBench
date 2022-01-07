
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_virstor_metadata {void* flags; void* chunk_reserved; void* chunk_next; void* chunk_count; void* provsize; void* no; int provider; void* md_count; void* md_id; void* md_chunk_size; void* md_virsize; int md_name; void* md_version; int md_magic; } ;
typedef int bin_stream_t ;


 int bs_open (int *,char*) ;
 int bs_read_buf (int *,int ,int) ;
 void* bs_read_u16 (int *) ;
 void* bs_read_u32 (int *) ;
 void* bs_read_u64 (int *) ;

void
virstor_metadata_decode(unsigned char *data, struct g_virstor_metadata *md)
{
 bin_stream_t bs;

 bs_open(&bs, (char *)(data));

 bs_read_buf(&bs, md->md_magic, sizeof(md->md_magic));
 md->md_version = bs_read_u32(&bs);
 bs_read_buf(&bs, md->md_name, sizeof(md->md_name));
 md->md_virsize = bs_read_u64(&bs);
 md->md_chunk_size = bs_read_u32(&bs);
 md->md_id = bs_read_u32(&bs);
 md->md_count = bs_read_u16(&bs);

 bs_read_buf(&bs, md->provider, sizeof(md->provider));
 md->no = bs_read_u16(&bs);
 md->provsize = bs_read_u64(&bs);
 md->chunk_count = bs_read_u32(&bs);
 md->chunk_next = bs_read_u32(&bs);
 md->chunk_reserved = bs_read_u16(&bs);
 md->flags = bs_read_u16(&bs);
}
