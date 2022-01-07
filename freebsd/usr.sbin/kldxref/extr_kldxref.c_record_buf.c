
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAXRECSIZE ;
 int errx (int,char*) ;
 int memcpy (size_t,void const*,size_t) ;
 size_t recbuf ;
 size_t recpos ;

__attribute__((used)) static int
record_buf(const void *buf, size_t size)
{

 if (MAXRECSIZE - recpos < size)
  errx(1, "record buffer overflow");
 memcpy(recbuf + recpos, buf, size);
 recpos += size;
 return (0);
}
