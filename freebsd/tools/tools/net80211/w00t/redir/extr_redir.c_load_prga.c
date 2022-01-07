
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {char* fname; int prga_len; int prga; int iv; } ;


 int O_RDONLY ;
 int close (int) ;
 int err (int,char*) ;
 int exit (int) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 int read (int,int ,int) ;

void load_prga(struct params *p)
{
        int fd;
        int rd;

        fd = open(p->fname, O_RDONLY);
        if (fd == -1) {
                p->prga_len = 0;
                return;
        }

        rd = read(fd, p->iv, 3);
        if (rd == -1)
                err(1, "read()");
        if (rd != 3) {
                printf("Short read\n");
                exit(1);
        }

        rd = read(fd, p->prga, sizeof(p->prga));
        if (rd == -1)
                err(1, "read()");
        p->prga_len = rd;

        printf("Loaded %d PRGA from %s\n", p->prga_len, p->fname);
        close(fd);
}
