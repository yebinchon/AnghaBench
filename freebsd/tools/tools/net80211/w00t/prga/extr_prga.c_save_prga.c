
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int prga_len; int prga; int iv; int fname; } ;


 int O_CREAT ;
 int O_WRONLY ;
 int close (int) ;
 int err (int,char*) ;
 int exit (int) ;
 int open (int ,int,int) ;
 int printf (char*,...) ;
 int write (int,int ,int) ;

void save_prga(struct params *p)
{
 int fd;
 int rd;

 fd = open(p->fname, O_WRONLY | O_CREAT, 0644);
 if (fd == -1)
  err(1, "open()");

 rd = write(fd, p->iv, 3);
 if (rd == -1)
  err(1, "write()");
 if (rd != 3) {
  printf("Short write\n");
  exit(1);
 }

 rd = write(fd, p->prga, p->prga_len);
 if (rd == -1)
  err(1, "write()");
 if (rd != p->prga_len) {
  printf("Wrote %d/%d\n", rd, p->prga_len);
  exit(1);
 }
 close(fd);

 printf("Got %d bytes of PRGA\n", p->prga_len);
}
