
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct hyperv_guid {int* hv_guid; } ;


 int snprintf (char*,size_t,char*,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const,int const) ;

int
hyperv_guid2str(const struct hyperv_guid *guid, char *buf, size_t sz)
{
 const uint8_t *d = guid->hv_guid;

 return snprintf(buf, sz, "%02x%02x%02x%02x-"
     "%02x%02x-%02x%02x-%02x%02x-"
     "%02x%02x%02x%02x%02x%02x",
     d[3], d[2], d[1], d[0],
     d[5], d[4], d[7], d[6], d[8], d[9],
     d[10], d[11], d[12], d[13], d[14], d[15]);
}
