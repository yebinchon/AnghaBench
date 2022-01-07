
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int type; char* s; unsigned int len; } ;
typedef int FILE ;




 scalar_t__ EIO ;
 TYPE_1__* appends ;
 unsigned int appendx ;
 scalar_t__ errno ;
 int errx (int,char*,int ,int ) ;
 int fclose (int *) ;
 scalar_t__ ferror (int ) ;
 int * fopen (char*,char*) ;
 unsigned int fread (char*,int,int,int *) ;
 int fwrite (char*,int,unsigned int,int ) ;
 int outfile ;
 int outfname ;
 unsigned int sdone ;
 int strerror (scalar_t__) ;

__attribute__((used)) static void
flush_appends(void)
{
 FILE *f;
 unsigned int count, idx;
 char buf[8 * 1024];

 for (idx = 0; idx < appendx; idx++)
  switch (appends[idx].type) {
  case 128:
   fwrite(appends[idx].s, sizeof(char), appends[idx].len,
       outfile);
   break;
  case 129:
   if ((f = fopen(appends[idx].s, "r")) == ((void*)0))
    break;
   while ((count = fread(buf, sizeof(char), sizeof(buf), f)))
    (void)fwrite(buf, sizeof(char), count, outfile);
   (void)fclose(f);
   break;
  }
 if (ferror(outfile))
  errx(1, "%s: %s", outfname, strerror(errno ? errno : EIO));
 appendx = sdone = 0;
}
