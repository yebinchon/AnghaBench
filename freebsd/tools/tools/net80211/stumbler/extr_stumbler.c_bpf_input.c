
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_hdr {int bh_hdrlen; int bh_caplen; } ;
typedef int buf ;


 int assert (int) ;
 int bpf_s ;
 int die (int,char*) ;
 int radiotap (unsigned char*,int) ;
 int read (int ,unsigned char*,int) ;

void bpf_input() {
 static unsigned char buf[4096];
 int rd;
 struct bpf_hdr* bpfh;
 unsigned char* data;

 rd = read(bpf_s, buf, sizeof(buf));
 if (rd == -1)
  die(1,"read()");

 bpfh = (struct bpf_hdr*) buf;
 rd -= bpfh->bh_hdrlen;

 if (rd != bpfh->bh_caplen) {
  assert( rd > bpfh->bh_caplen);
  rd = bpfh->bh_caplen;
 }

 data = (unsigned char*) bpfh + bpfh->bh_hdrlen;
 radiotap(data, rd);
}
