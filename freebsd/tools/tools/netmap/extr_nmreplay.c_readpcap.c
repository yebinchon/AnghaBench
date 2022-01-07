
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int u_long ;
struct q_pkt {int dummy; } ;
struct pcap_file_header {int dummy; } ;
struct nm_pcap_file {scalar_t__ fd; int filesize; scalar_t__ data; scalar_t__ cur; scalar_t__ lim; scalar_t__ err; int swap; int resolution; scalar_t__ tot_pkt; scalar_t__ first_ts; int tot_bytes; int total_tx_time; int tot_bytes_rounded; } ;


 int ED (char*,int,...) ;
 int EEE (char*,...) ;
 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int NS_SCALE ;
 int O_RDONLY ;
 int PROT_READ ;
 int SEEK_END ;
 int SEEK_SET ;
 int WWW (char*,int) ;
 int bzero (struct nm_pcap_file*,int) ;
 struct nm_pcap_file* calloc (int,int) ;
 int close (scalar_t__) ;
 int lseek (scalar_t__,int ,int ) ;
 scalar_t__ mmap (int *,int,int ,int ,scalar_t__,int ) ;
 scalar_t__ open (char const*,int ) ;
 scalar_t__ pad (int) ;
 int read_next_info (struct nm_pcap_file*,int) ;

__attribute__((used)) static struct nm_pcap_file *
readpcap(const char *fn)
{
    struct nm_pcap_file _f, *pf = &_f;
    uint64_t prev_ts, first_pkt_time;
    uint32_t magic, first_len = 0;

    bzero(pf, sizeof(*pf));
    pf->fd = open(fn, O_RDONLY);
    if (pf->fd < 0) {
 EEE("cannot open file %s", fn);
 return ((void*)0);
    }

    pf->filesize = lseek(pf->fd, 0, SEEK_END);
    lseek(pf->fd, 0, SEEK_SET);
    ED("filesize is %lu", (u_long)(pf->filesize));
    if (pf->filesize < sizeof(struct pcap_file_header)) {
 EEE("file too short %s", fn);
 close(pf->fd);
 return ((void*)0);
    }
    pf->data = mmap(((void*)0), pf->filesize, PROT_READ, MAP_SHARED, pf->fd, 0);
    if (pf->data == MAP_FAILED) {
 EEE("cannot mmap file %s", fn);
 close(pf->fd);
 return ((void*)0);
    }
    pf->cur = pf->data;
    pf->lim = pf->data + pf->filesize;
    pf->err = 0;
    pf->swap = 0;

    magic = read_next_info(pf, 4);
    ED("magic is 0x%x", magic);
    switch (magic) {
    case 0xa1b2c3d4:
 pf->swap = 0;
 pf->resolution = 1000;
 break;
    case 0xd4c3b2a1:
 pf->swap = 1;
 pf->resolution = 1000;
 break;
    case 0xa1b23c4d:
 pf->swap = 0;
 pf->resolution = 1;
 break;
    case 0x4d3cb2a1:
 pf->swap = 1;
 pf->resolution = 1;
 break;
    default:
 EEE("unknown magic 0x%x", magic);
 return ((void*)0);
    }

    ED("swap %d res %d\n", pf->swap, pf->resolution);
    pf->cur = pf->data + sizeof(struct pcap_file_header);
    pf->lim = pf->data + pf->filesize;
    pf->err = 0;
    prev_ts = 0;
    while (pf->cur < pf->lim && pf->err == 0) {
 uint32_t base = pf->cur - pf->data;
 uint64_t cur_ts = read_next_info(pf, 4) * NS_SCALE +
  read_next_info(pf, 4) * pf->resolution;
 uint32_t caplen = read_next_info(pf, 4);
 uint32_t len = read_next_info(pf, 4);

 if (pf->err) {
     WWW("end of pcap file after %d packets\n",
  (int)pf->tot_pkt);
     break;
 }
 if (cur_ts < prev_ts) {
     WWW("reordered packet %d\n",
  (int)pf->tot_pkt);
 }
 prev_ts = cur_ts;
 (void)base;
 if (pf->tot_pkt == 0) {
     pf->first_ts = cur_ts;
     first_len = len;
 }
 pf->tot_pkt++;
 pf->tot_bytes += len;
 pf->tot_bytes_rounded += pad(len) + sizeof(struct q_pkt);
 pf->cur += caplen;
    }
    pf->total_tx_time = prev_ts - pf->first_ts;
    ED("tot_pkt %lu tot_bytes %lu tx_time %.6f s first_len %lu",
 (u_long)pf->tot_pkt, (u_long)pf->tot_bytes,
 1e-9*pf->total_tx_time, (u_long)first_len);
    if (pf->tot_bytes == first_len) {

 first_pkt_time = first_len * 8;
    } else {
 first_pkt_time = pf->total_tx_time * first_len / (pf->tot_bytes - first_len);
    }
    ED("first_pkt_time %.6f s", 1e-9*first_pkt_time);
    pf->total_tx_time += first_pkt_time;
    pf->first_ts -= first_pkt_time;


    pf = calloc(1, sizeof(*pf));
    *pf = _f;

    pf->cur = pf->data + sizeof(struct pcap_file_header);
    pf->err = 0;
    return pf;
}
