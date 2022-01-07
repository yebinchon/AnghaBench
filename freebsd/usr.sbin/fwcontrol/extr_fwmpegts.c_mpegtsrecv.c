
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct mpeg_pldt {int payload; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_8__ {TYPE_3__ stream; } ;
struct fw_pkt {TYPE_4__ mode; } ;
struct TYPE_6__ {scalar_t__ psize; scalar_t__ npacket; scalar_t__ nchunk; } ;
struct TYPE_5__ {int psize; int npacket; int nchunk; } ;
struct fw_isochreq {char ch; char tag; TYPE_2__ tx; TYPE_1__ rx; } ;
struct fw_isobufreq {char ch; char tag; TYPE_2__ tx; TYPE_1__ rx; } ;
struct ciphdr {scalar_t__ fmt; int fn; int len; int qpc; int dbc; } ;


 scalar_t__ CIP_FMT_MPEG ;
 scalar_t__ EAGAIN ;
 int EX_NOINPUT ;
 int FW_SRSTREAM ;
 int FW_SSTBUF ;
 int NCHUNK ;
 int NPACKET_R ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PSIZE ;
 int RBUFSIZE ;
 int STDOUT_FILENO ;
 int close (int) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,scalar_t__) ;
 int fprintf (int ,char*,...) ;
 int htonl (int ) ;
 scalar_t__ ioctl (int,int ,struct fw_isochreq*) ;
 char* malloc (int ) ;
 int open (char const*,int,int) ;
 int read (int,char*,int ) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int write (int,int ,int) ;

void
mpegtsrecv(int d, const char *filename, char ich, int count)
{
 struct ciphdr *ciph;
 struct fw_isochreq isoreq;
 struct fw_isobufreq bufreq;
 struct fw_pkt *pkt;
 struct mpeg_pldt *pld;
 uint32_t *ptr;
 int fd, k, len, m, pkt_size, startwr, tlen;
 char *buf;

 startwr = 0;

 if (strcmp(filename, "-") == 0)
  fd = STDOUT_FILENO;
 else {
  fd = open(filename, O_CREAT | O_WRONLY | O_TRUNC, 0660);
  if (fd == -1)
   err(EX_NOINPUT, "%s", filename);
 }
 buf = malloc(RBUFSIZE);

 bufreq.rx.nchunk = NCHUNK;
 bufreq.rx.npacket = NPACKET_R;
 bufreq.rx.psize = PSIZE;
 bufreq.tx.nchunk = 0;
 bufreq.tx.npacket = 0;
 bufreq.tx.psize = 0;
 if (ioctl(d, FW_SSTBUF, &bufreq) < 0)
  err(1, "ioctl");

 isoreq.ch = ich & 0x3f;
 isoreq.tag = (ich >> 6) & 3;

 if (ioctl(d, FW_SRSTREAM, &isoreq) < 0)
  err(1, "ioctl");

 k = m = 0;
 while (count <= 0 || k <= count) {
  len = tlen = read(d, buf, RBUFSIZE);



  if (len < 0) {
   if (errno == EAGAIN) {
    fprintf(stderr, "(EAGAIN) - push 'Play'?\n");
    continue;
   }
   err(1, "read failed");
  }
  ptr = (uint32_t *) buf;

  do {
   pkt = (struct fw_pkt *) ptr;







   ciph = (struct ciphdr *)(ptr + 1);
   if (ciph->fmt != CIP_FMT_MPEG)
    errx(1, "unknown format 0x%x", ciph->fmt);
   if (ciph->fn != 3) {
    errx(1,
      "unsupported MPEG TS stream, fn=%d (only fn=3 is supported)",
      ciph->fn);
   }
   ptr = (uint32_t *) (ciph + 1);

   if (pkt->mode.stream.len <= sizeof(struct ciphdr)) {


    goto next;
   }
   if (ciph->dbc % (1<<ciph->fn) == 0)
    startwr = 1;

   for (pld = (struct mpeg_pldt *)ptr;
       (intptr_t)pld < (intptr_t)((char *)ptr +
       pkt->mode.stream.len - sizeof(struct ciphdr));
       pld++) {
    if (startwr == 1)
     write(fd, pld->payload,
         sizeof(pld->payload));
   }

next:


   pkt_size = pkt->mode.stream.len + 4;
   ptr = (uint32_t *)((intptr_t)pkt + pkt_size);
   tlen -= pkt_size;
  } while (tlen > 0);




 }
 if (fd != STDOUT_FILENO)
  close(fd);
 fprintf(stderr, "\n");
}
