
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef enum filetype { ____Placeholder_filetype } filetype ;


 int BZIP2_MAGIC ;
 int FT_BZIP2 ;
 int FT_GZIP ;
 int FT_LZ ;
 int FT_PACK ;
 int FT_UNKNOWN ;
 int FT_XZ ;
 int FT_Z ;
 char GZIP_MAGIC0 ;
 char GZIP_MAGIC1 ;
 char GZIP_OMAGIC1 ;
 int LZ_MAGIC ;
 int PACK_MAGIC ;
 int XZ_MAGIC ;
 int Z_MAGIC ;
 scalar_t__ memcmp (char*,int ,int) ;

__attribute__((used)) static enum filetype
file_gettype(u_char *buf)
{

 if (buf[0] == GZIP_MAGIC0 &&
     (buf[1] == GZIP_MAGIC1 || buf[1] == GZIP_OMAGIC1))
  return FT_GZIP;
 else

 if (memcmp(buf, BZIP2_MAGIC, 3) == 0 &&
     buf[3] >= '0' && buf[3] <= '9')
  return FT_BZIP2;
 else


 if (memcmp(buf, Z_MAGIC, 2) == 0)
  return FT_Z;
 else


 if (memcmp(buf, PACK_MAGIC, 2) == 0)
  return FT_PACK;
 else


 if (memcmp(buf, XZ_MAGIC, 4) == 0)
  return FT_XZ;
 else


 if (memcmp(buf, LZ_MAGIC, 4) == 0)
  return FT_LZ;
 else

  return FT_UNKNOWN;
}
