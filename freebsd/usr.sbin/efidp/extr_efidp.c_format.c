
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef scalar_t__ const_efidp ;
typedef int buffer ;


 int MAXSIZE ;
 int STDIN_FILENO ;
 int efidp_format_device_path (char*,int,scalar_t__,size_t) ;
 size_t efidp_size (scalar_t__) ;
 int err (int,char*) ;
 int free (void*) ;
 int printf (char*,char*) ;
 int read_file (int ,void**) ;

__attribute__((used)) static void
format(void)
{
 char buffer[MAXSIZE];
 ssize_t fmtlen;
 ssize_t len;
 void *data;
 size_t dplen;
 const_efidp dp;

 len = read_file(STDIN_FILENO, &data);
 if (len == -1)
  err(1, "read");
 dp = (const_efidp)data;
 while (len > 0) {
  dplen = efidp_size(dp);
  fmtlen = efidp_format_device_path(buffer, sizeof(buffer),
      dp, dplen);
  if (fmtlen > 0)
   printf("%s\n", buffer);
  len -= dplen;
  dp = (const_efidp)((const char *)dp + dplen);
 }
 free(data);
}
