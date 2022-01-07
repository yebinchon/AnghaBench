
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btx_hdr {scalar_t__* btx_magic; int btx_entry; void* btx_textsz; void* btx_pgctl; } ;


 scalar_t__ BTX_MAG0 ;
 scalar_t__ BTX_MAG1 ;
 scalar_t__ BTX_MAG2 ;
 int errx (int,char*,int ) ;
 int fname ;
 void* le16toh (void*) ;
 int le32toh (int ) ;
 int readx (int,struct btx_hdr*,int,int ) ;

__attribute__((used)) static void
getbtx(int fd, struct btx_hdr * btx)
{
    if (readx(fd, btx, sizeof(*btx), 0) != sizeof(*btx) ||
 btx->btx_magic[0] != BTX_MAG0 ||
 btx->btx_magic[1] != BTX_MAG1 ||
 btx->btx_magic[2] != BTX_MAG2)
 errx(1, "%s: Not a BTX kernel", fname);
    btx->btx_pgctl = le16toh(btx->btx_pgctl);
    btx->btx_textsz = le16toh(btx->btx_textsz);
    btx->btx_entry = le32toh(btx->btx_entry);
}
