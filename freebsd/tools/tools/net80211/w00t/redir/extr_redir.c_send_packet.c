
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int packet_len; int last; scalar_t__ packet; int data_try; int tx; } ;
struct ieee80211_frame {int * i_fc; } ;


 int IEEE80211_FC1_RETRY ;
 int err (int,char*) ;
 int exit (int) ;
 int gettimeofday (int *,int *) ;
 int inject (int ,scalar_t__,int) ;
 int printf (char*,int,int) ;

void send_packet(struct params *p)
{
        int rc;
        struct ieee80211_frame *wh;

        rc = inject(p->tx, p->packet, p->packet_len);
        if (rc == -1)
                err(1, "inject()");
        if (rc != p->packet_len) {
                printf("Wrote %d/%d\n", rc, p->packet_len);
                exit(1);
        }

        p->data_try++;
        wh = (struct ieee80211_frame*) p->packet;
        wh->i_fc[1] |= IEEE80211_FC1_RETRY;

        if (gettimeofday(&p->last, ((void*)0)) == -1)
                err(1, "gettimeofday()");
}
