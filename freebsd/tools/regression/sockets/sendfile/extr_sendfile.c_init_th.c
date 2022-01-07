
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct test_header {int th_md5; void* th_length; void* th_offset; void* th_header_length; void* th_magic; } ;


 int MD5FileChunk (int ,int ,int ,int ) ;
 int TEST_MAGIC ;
 int bzero (struct test_header*,int) ;
 void* htonl (int ) ;
 int path ;

__attribute__((used)) static void
init_th(struct test_header *th, uint32_t header_length, uint32_t offset,
  uint32_t length)
{
 bzero(th, sizeof(*th));
 th->th_magic = htonl(TEST_MAGIC);
 th->th_header_length = htonl(header_length);
 th->th_offset = htonl(offset);
 th->th_length = htonl(length);

 MD5FileChunk(path, th->th_md5, offset, length);
}
