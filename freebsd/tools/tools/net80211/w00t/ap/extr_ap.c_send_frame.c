
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int seq; int tx; } ;


 int err (int,char*) ;
 int exit (int) ;
 int inject (int ,void*,int) ;
 int printf (char*,int,int) ;

void send_frame(struct params *p, void *buf, int len)
{
        int rc;

        rc = inject(p->tx, buf, len);
        if (rc == -1)
                err(1, "inject()");
        if (rc != len) {
                printf("injected %d/%d\n", rc, len);
                exit(1);
        }
        p->seq++;
}
