
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
typedef scalar_t__ lba_t ;


 int DOSMAGIC ;
 int DOSMAGICOFFSET ;
 int DOSPARTOFF ;
 scalar_t__ UINT32_MAX ;
 int errno ;
 int free (int*) ;
 int image_write (int ,int*,int) ;
 int le16enc (int*,int ) ;
 int le32enc (int*,scalar_t__) ;
 int* malloc (scalar_t__) ;
 int memcpy (int*,void*,int) ;
 int memset (int*,int ,scalar_t__) ;
 scalar_t__ secsz ;

__attribute__((used)) static int
gpt_write_pmbr(lba_t blks, void *bootcode)
{
 u_char *pmbr;
 uint32_t secs;
 int error;

 secs = (blks > UINT32_MAX) ? UINT32_MAX : (uint32_t)blks - 1;

 pmbr = malloc(secsz);
 if (pmbr == ((void*)0))
  return (errno);
 if (bootcode != ((void*)0)) {
  memcpy(pmbr, bootcode, DOSPARTOFF);
  memset(pmbr + DOSPARTOFF, 0, secsz - DOSPARTOFF);
 } else
  memset(pmbr, 0, secsz);
 pmbr[DOSPARTOFF + 2] = 2;
 pmbr[DOSPARTOFF + 4] = 0xee;
 pmbr[DOSPARTOFF + 5] = 0xff;
 pmbr[DOSPARTOFF + 6] = 0xff;
 pmbr[DOSPARTOFF + 7] = 0xff;
 le32enc(pmbr + DOSPARTOFF + 8, 1);
 le32enc(pmbr + DOSPARTOFF + 12, secs);
 le16enc(pmbr + DOSMAGICOFFSET, DOSMAGIC);
 error = image_write(0, pmbr, 1);
 free(pmbr);
 return (error);
}
