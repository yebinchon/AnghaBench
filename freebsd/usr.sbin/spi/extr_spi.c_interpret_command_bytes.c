
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct spi_options {int ncmd; scalar_t__ lsb; scalar_t__* pcmd; } ;


 int DEFAULT_BUFFER_SIZE ;
 int errno ;
 int fprintf (int ,char*,int) ;
 int hexval (int ) ;
 scalar_t__ malloc (int) ;
 void* realloc (scalar_t__*,int) ;
 scalar_t__* reversebits ;
 int stderr ;

__attribute__((used)) static int
interpret_command_bytes(const char *parg, struct spi_options *popt)
{
 int ch, ch2, ctr, cbcmd, err;
 const char *ppos;
 void *ptemp;
 uint8_t *pcur;

 err = 0;
 cbcmd = DEFAULT_BUFFER_SIZE;
 popt->pcmd = (uint8_t *)malloc(cbcmd);

 if (!popt->pcmd)
  return 1;

 pcur = popt->pcmd;

 ctr = 0;
 ppos = parg;

 while (*ppos) {
  while (*ppos && *ppos <= ' ') {
   ppos++;
  }

  if (!*ppos)
   break;

  ch = hexval(*(ppos++));
  if (ch < 0 || !*ppos) {
   err = 1;
   goto the_end;
  }

  ch2 = hexval(*(ppos++));
  if (ch2 < 0) {
   err = 1;
   goto the_end;
  }

  ch = (ch * 16 + ch2) & 0xff;

  if (ctr >= cbcmd) {
   cbcmd += 8192;
   ptemp = realloc(popt->pcmd, cbcmd);

   if (!ptemp) {
    err = 1;
    fprintf(stderr,
     "Not enough memory to interpret command bytes, errno=%d\n",
     errno);
    goto the_end;
   }

   popt->pcmd = (uint8_t *)ptemp;
   pcur = popt->pcmd + ctr;
  }

  if (popt->lsb)
   *pcur = reversebits[ch];
  else
   *pcur = (uint8_t)ch;

  pcur++;
  ctr++;
 }

 popt->ncmd = ctr;

the_end:



 return err;
}
