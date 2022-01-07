
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cudbg_buffer {int offset; int size; int data; } ;


 int CUDBG_CHUNK_BUF_LEN ;
 int write_to_buf (int ,int ,int *,unsigned char*,int) ;

int write_chunk_header(struct cudbg_buffer *_outbuf, int id, int options,
         unsigned long size, unsigned long checksum,
         unsigned long extra)
{
 unsigned char buffer[CUDBG_CHUNK_BUF_LEN];
 int rc = 0;

 buffer[0] = id & 255;
 buffer[1] = (unsigned char)(id >> 8);
 buffer[2] = options & 255;
 buffer[3] = (unsigned char)(options >> 8);
 buffer[4] = size & 255;
 buffer[5] = (size >> 8) & 255;
 buffer[6] = (size >> 16) & 255;
 buffer[7] = (size >> 24) & 255;
 buffer[8] = checksum & 255;
 buffer[9] = (checksum >> 8) & 255;
 buffer[10] = (checksum >> 16) & 255;
 buffer[11] = (checksum >> 24) & 255;
 buffer[12] = extra & 255;
 buffer[13] = (extra >> 8) & 255;
 buffer[14] = (extra >> 16) & 255;
 buffer[15] = (extra >> 24) & 255;

 rc = write_to_buf(_outbuf->data, _outbuf->size, &_outbuf->offset,
     buffer, 16);

 return rc;
}
