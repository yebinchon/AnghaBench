
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIZE (char const* const*) ;
 int memset (char*,int ,int) ;
 int strlen (char*) ;
 int strncat (char*,char const* const,int) ;

char const *
hci_hmode2str(int mode, char *buffer, int size)
{
 static char const * const t[] = {
             "Suspend Page Scan ",
             "Suspend Inquiry Scan ",
             "Suspend Periodic Inquiries "
        };

 if (buffer != ((void*)0) && size > 0) {
  int n;

  memset(buffer, 0, size);
  for (n = 0; n < SIZE(t); n++) {
   int len = strlen(buffer);

   if (len >= size)
    break;
   if (mode & (1 << n))
    strncat(buffer, t[n], size - len);
  }
 }

 return (buffer);
}
