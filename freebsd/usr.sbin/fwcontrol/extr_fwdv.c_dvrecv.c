
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int wbuf ;
typedef int u_int32_t ;
struct iovec {char* iov_base; int iov_len; } ;
struct TYPE_7__ {int len; } ;
struct TYPE_8__ {TYPE_1__ stream; } ;
struct fw_pkt {TYPE_2__ mode; } ;
struct TYPE_10__ {scalar_t__ psize; scalar_t__ npacket; scalar_t__ nchunk; } ;
struct TYPE_9__ {int npacket; int psize; int nchunk; } ;
struct fw_isochreq {char ch; char tag; TYPE_4__ tx; TYPE_3__ rx; } ;
struct fw_isobufreq {char ch; char tag; TYPE_4__ tx; TYPE_3__ rx; } ;
struct dvdbc {int sct; int dseq; int* payload; } ;
struct TYPE_11__ {int cyc; int fs; } ;
struct TYPE_12__ {TYPE_5__ dv; } ;
struct ciphdr {scalar_t__ fmt; int len; TYPE_6__ fdf; } ;


 scalar_t__ CIP_FMT_DVCR ;
 int DSIZE ;
 int DV_DSF_12 ;
 scalar_t__ DV_SCT_HEADER ;
 scalar_t__ EAGAIN ;
 int EX_NOINPUT ;
 int FW_SRSTREAM ;
 int FW_SSTBUF ;
 int MAXBLOCKS ;
 int NCHUNK ;
 int NPACKET_R ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PSIZE ;
 int RBUFSIZE ;
 int STDOUT_FILENO ;
 int bzero (struct iovec*,int) ;
 int close (int) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,scalar_t__) ;
 int fflush (int ) ;
 int fprintf (int ,char*,...) ;
 int* frame_rate ;
 int htonl (int ) ;
 scalar_t__ ioctl (int,int ,struct fw_isochreq*) ;
 char* malloc (int) ;
 int memset (char*,int,int) ;
 int ntohs (int) ;
 int open (char const*,int,int) ;
 int read (int,char*,int) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 char** system_name ;
 int writev (int,struct iovec*,int) ;

void
dvrecv(int d, const char *filename, char ich, int count)
{
 struct fw_isochreq isoreq;
 struct fw_isobufreq bufreq;
 struct dvdbc *dv;
 struct ciphdr *ciph;
 struct fw_pkt *pkt;
 char *pad, *buf;
 u_int32_t *ptr;
 int len, tlen, npad, fd, k, m, vec, system = -1, nb;
 int nblocks[] = {250 , 300 };
 struct iovec wbuf[NPACKET_R];

 if(strcmp(filename, "-") == 0) {
  fd = STDOUT_FILENO;
 } else {
  fd = open(filename, O_CREAT | O_WRONLY | O_TRUNC, 0660);
  if (fd == -1)
   err(EX_NOINPUT, "%s", filename);
 }
 buf = malloc(RBUFSIZE);
 pad = malloc(DSIZE*MAXBLOCKS);
 memset(pad, 0xff, DSIZE*MAXBLOCKS);
 bzero(wbuf, sizeof(wbuf));

 bufreq.rx.nchunk = NCHUNK;
 bufreq.rx.npacket = NPACKET_R;
 bufreq.rx.psize = PSIZE;
 bufreq.tx.nchunk = 0;
 bufreq.tx.npacket = 0;
 bufreq.tx.psize = 0;
 if (ioctl(d, FW_SSTBUF, &bufreq) < 0)
  err(1, "ioctl FW_SSTBUF");

 isoreq.ch = ich & 0x3f;
 isoreq.tag = (ich >> 6) & 3;

 if (ioctl(d, FW_SRSTREAM, &isoreq) < 0)
         err(1, "ioctl");

 k = m = 0;
 while (count <= 0 || k <= count) {
  tlen = len = read(d, buf, RBUFSIZE);
  if (len < 0) {
   if (errno == EAGAIN) {
    fprintf(stderr, "(EAGAIN) - push 'Play'?\n");
    fflush(stderr);
    if (len <= 0)
     continue;
   } else
    err(1, "read failed");
  }

  vec = 0;
  ptr = (u_int32_t *) buf;
again:
  pkt = (struct fw_pkt *) ptr;





  ciph = (struct ciphdr *)(ptr + 1);
  if (ciph->fmt != CIP_FMT_DVCR)
   errx(1, "unknown format 0x%x", ciph->fmt);
  ptr = (u_int32_t *) (ciph + 1);





  if (pkt->mode.stream.len <= sizeof(struct ciphdr))

   goto next;
  for (dv = (struct dvdbc *)ptr;
    (char *)dv < (char *)(ptr + ciph->len);
    dv+=6) {




   if (dv->sct == DV_SCT_HEADER && dv->dseq == 0) {
    if (system < 0) {
     system = ciph->fdf.dv.fs;
     fprintf(stderr, "%s\n", system_name[system]);
    }


    if (system == 1 &&
     (dv->payload[0] & DV_DSF_12) == 0)
     dv->payload[0] |= DV_DSF_12;
    nb = nblocks[system];
     fprintf(stderr, "%d:%02d:%02d %d\r",
     k / (3600 * frame_rate[system]),
     (k / (60 * frame_rate[system])) % 60,
     (k / frame_rate[system]) % 60,
     k % frame_rate[system]);
    k++;
    fflush(stderr);
    m = 0;
   }
   if (k == 0 || (count > 0 && k > count))
    continue;
   m++;
   wbuf[vec].iov_base = (char *) dv;
   wbuf[vec++].iov_len = DSIZE;
   if (vec >= NPACKET_R) {
    writev(fd, wbuf, vec);
    vec = 0;
   }
  }
  ptr = (u_int32_t *)dv;
next:
  if ((char *)ptr < buf + tlen)
   goto again;
  if (vec > 0)
   writev(fd, wbuf, vec);
 }
 if (fd != STDOUT_FILENO)
  close(fd);
 fprintf(stderr, "\n");
}
