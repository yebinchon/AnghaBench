
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _qs {char* prod_ifname; int * pcap; int cons_ifname; int t0; } ;
struct pipe_args {int * pb; int cons_core; struct _qs q; } ;


 int EEE (char*,...) ;
 int WWW (char*) ;
 int cons (void*) ;
 int destroy_pcap (int *) ;
 int do_abort ;
 int * nm_open (int ,int *,int ,int *) ;
 int pcap_prod (void*) ;
 int * readpcap (char const*) ;
 int set_tns_now (int *,int ) ;
 int setaffinity (int ) ;
 int usleep (int) ;

__attribute__((used)) static void *
nmreplay_main(void *_a)
{
    struct pipe_args *a = _a;
    struct _qs *q = &a->q;
    const char *cap_fname = q->prod_ifname;

    setaffinity(a->cons_core);
    set_tns_now(&q->t0, 0);
    if (cap_fname == ((void*)0)) {
 goto fail;
    }
    q->pcap = readpcap(cap_fname);
    if (q->pcap == ((void*)0)) {
 EEE("unable to read file %s", cap_fname);
 goto fail;
    }
    pcap_prod((void*)a);
    destroy_pcap(q->pcap);
    q->pcap = ((void*)0);
    a->pb = nm_open(q->cons_ifname, ((void*)0), 0, ((void*)0));
    if (a->pb == ((void*)0)) {
 EEE("cannot open netmap on %s", q->cons_ifname);
 do_abort = 1;
 return ((void*)0);
    }

    WWW("prepare to send packets");
    usleep(1000);
    cons((void*)a);
    EEE("exiting on abort");
fail:
    if (q->pcap != ((void*)0)) {
 destroy_pcap(q->pcap);
    }
    do_abort = 1;
    return ((void*)0);
}
