
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysctlbuf ;
struct mps_dumpreq_hdr {int numframes; int smid; int state; int deschi; int desclo; } ;


 int ENOMEM ;
 size_t MPS_FRAME_LEN ;
 int errno ;
 int find_sgl (char*) ;
 scalar_t__ is_mps ;
 char* malloc (size_t) ;
 int mps_unit ;
 int print_sgl (char*,int,int) ;
 int printf (char*,int,int,int,...) ;
 int snprintf (char*,int,char*,char*,int) ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;

__attribute__((used)) static int
debug_dumpreqs(int ac, char **av)
{
 struct mps_dumpreq_hdr *hdr;
 char *buf, sysctlbuf[128];
 size_t len;
 int numframes, error, offset;

 len = 0;
 buf = ((void*)0);
 snprintf(sysctlbuf, sizeof(sysctlbuf), "dev.%s.%d.dump_reqs",
     is_mps ? "mps" : "mpr", mps_unit);

 error = sysctlbyname(sysctlbuf, ((void*)0), &len, ((void*)0), 0);
 if (error)
  return (error);

 if (len == 0)
  return (0);

 buf = malloc(len);
 if (buf == ((void*)0))
  return (ENOMEM);

 error = sysctlbyname(sysctlbuf, buf, &len, ((void*)0), 0);
 if (error) {
  printf("len= %zd, error= %d errno= %d\n", len, error, errno);
  return (error);
 }

 while (len >= MPS_FRAME_LEN) {
  hdr = (struct mps_dumpreq_hdr *)buf;
  numframes = hdr->numframes;

  printf("SMID= %d state= %#x numframes= %d desc.hi= %#08x "
      "desc.lo= %#08x\n", hdr->smid, hdr->state,
      hdr->numframes, hdr->deschi, hdr->desclo);

  buf += sizeof(struct mps_dumpreq_hdr);
  len -= sizeof(struct mps_dumpreq_hdr);

  if ((offset = find_sgl(buf)) != -1)
   print_sgl(buf, offset, numframes);

  buf += MPS_FRAME_LEN * numframes;
  len -= MPS_FRAME_LEN * numframes;
 }

 return (error);
}
