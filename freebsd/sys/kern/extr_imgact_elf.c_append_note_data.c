
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELF_NOTE_ROUNDSIZE ;
 int bcopy (void const*,void*,size_t) ;
 int bzero (char*,size_t) ;
 size_t roundup2 (size_t,int ) ;

__attribute__((used)) static size_t
append_note_data(const void *src, void *dst, size_t len)
{
 size_t padded_len;

 padded_len = roundup2(len, ELF_NOTE_ROUNDSIZE);
 if (dst != ((void*)0)) {
  bcopy(src, dst, len);
  bzero((char *)dst + len, padded_len - len);
 }
 return (padded_len);
}
