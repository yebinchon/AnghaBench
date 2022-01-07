
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int packet_len; int last; int packet; int tx; } ;


 int err (int,char*) ;
 int exit (int) ;
 int gettimeofday (int *,int *) ;
 int inject (int ,int ,int) ;
 int printf (char*,int,int) ;

void send_packet(struct params *p)
{
        int rc;

        rc = inject(p->tx, p->packet, p->packet_len);
        if (rc == -1)
                err(1, "inject()");
        if (rc != p->packet_len) {
                printf("Wrote %d/%d\n", rc, p->packet_len);
                exit(1);
        }

        if (gettimeofday(&p->last, ((void*)0)) == -1)
                err(1, "gettimeofday()");
}
