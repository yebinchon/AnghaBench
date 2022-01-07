
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int k ;


 int KEY_FILE ;
 int O_CREAT ;
 int O_WRONLY ;
 int assert (int) ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*,int,int) ;
 int open (int ,int,int) ;
 int printf (char*,char*) ;
 int sprintf (char*,char*,int ) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 int write (int,char*,int) ;

void save_key(unsigned char *key, int len)
{
 char tmp[16];
 char k[64];
 int fd;
 int rd;

 assert(len*3 < sizeof(k));

 k[0] = 0;
 while (len--) {
  sprintf(tmp, "%.2X", *key++);
  strcat(k, tmp);
  if (len)
   strcat(k, ":");
 }

 fd = open(KEY_FILE, O_WRONLY | O_CREAT, 0644);
 if (fd == -1)
  err(1, "open()");

 printf("\nKey: %s\n", k);
 rd = write(fd, k, strlen(k));
 if (rd == -1)
  err(1, "write()");
 if (rd != strlen(k))
  errx(1, "write %d/%d\n", rd, strlen(k));
 close(fd);
}
