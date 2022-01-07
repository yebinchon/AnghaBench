
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int desc ;


 int GIGABYTE ;
 int KILOBYTE ;
 int MEGABYTE ;
 int snprintf (char*,int,char*,int) ;

const char *
gv_roughlength(off_t bytes, int lj)
{
 static char desc[16];


 if (bytes > (off_t)MEGABYTE * 10000)
  snprintf(desc, sizeof(desc), lj ? "%jd GB" : "%10jd GB",
      bytes / GIGABYTE);


 else if (bytes > KILOBYTE * 10000)
  snprintf(desc, sizeof(desc), lj ? "%jd MB" : "%10jd MB",
      bytes / MEGABYTE);


 else if (bytes > 10000)
  snprintf(desc, sizeof(desc), lj ? "%jd kB" : "%10jd kB",
      bytes / KILOBYTE);


 else
  snprintf(desc, sizeof(desc), lj ? "%jd  B" : "%10jd  B", bytes);

 return (desc);
}
