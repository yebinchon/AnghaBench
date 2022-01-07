
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef scalar_t__ off_t ;
struct TYPE_5__ {size_t avail_in; char* next_in; char* next_out; scalar_t__ avail_out; int * opaque; int * bzfree; int * bzalloc; } ;
typedef TYPE_1__ bz_stream ;


 scalar_t__ BUFLEN ;
 int BZ2_bzDecompress (TYPE_1__*) ;
 int BZ2_bzDecompressEnd (TYPE_1__*) ;
 int const BZ2_bzDecompressInit (TYPE_1__*,int ,int ) ;





 int check_siginfo () ;
 int infile_newdata (scalar_t__) ;
 char* malloc (scalar_t__) ;
 int maybe_err (char*) ;
 int maybe_errx (char*) ;
 int maybe_warnx (char*,...) ;
 scalar_t__ read (int,char*,scalar_t__) ;
 int tflag ;
 scalar_t__ write (int,char*,scalar_t__) ;

__attribute__((used)) static off_t
unbzip2(int in, int out, char *pre, size_t prelen, off_t *bytes_in)
{
 int ret, end_of_file, cold = 0;
 off_t bytes_out = 0;
 bz_stream bzs;
 static char *inbuf, *outbuf;

 if (inbuf == ((void*)0))
  inbuf = malloc(BUFLEN);
 if (outbuf == ((void*)0))
  outbuf = malloc(BUFLEN);
 if (inbuf == ((void*)0) || outbuf == ((void*)0))
         maybe_err("malloc");

 bzs.bzalloc = ((void*)0);
 bzs.bzfree = ((void*)0);
 bzs.opaque = ((void*)0);

 end_of_file = 0;
 ret = BZ2_bzDecompressInit(&bzs, 0, 0);
 if (ret != 129)
         maybe_errx("bzip2 init");


 bzs.avail_in = prelen;
 bzs.next_in = pre;

 if (bytes_in)
  *bytes_in = prelen;

 while (ret == 129) {
  check_siginfo();
         if (bzs.avail_in == 0 && !end_of_file) {
   ssize_t n;

                 n = read(in, inbuf, BUFLEN);
                 if (n < 0)
                         maybe_err("read");
                 if (n == 0)
                         end_of_file = 1;
   infile_newdata(n);
                 bzs.next_in = inbuf;
                 bzs.avail_in = n;
   if (bytes_in)
    *bytes_in += n;
         }

         bzs.next_out = outbuf;
         bzs.avail_out = BUFLEN;
         ret = BZ2_bzDecompress(&bzs);

         switch (ret) {
         case 128:
         case 129:
                 if (ret == 129 && end_of_file) {





    if (cold == 1)
     ret = 128;
    else
     maybe_errx("truncated file");
   }
   cold = 0;
                 if (!tflag && bzs.avail_out != BUFLEN) {
    ssize_t n;

                         n = write(out, outbuf, BUFLEN - bzs.avail_out);
                         if (n < 0)
                                 maybe_err("write");
                  bytes_out += n;
                 }
   if (ret == 128 && !end_of_file) {
    if (BZ2_bzDecompressEnd(&bzs) != 129 ||
        BZ2_bzDecompressInit(&bzs, 0, 0) != 129)
     maybe_errx("bzip2 re-init");
    cold = 1;
    ret = 129;
   }
   break;

         case 132:
                 maybe_warnx("bzip2 data integrity error");
   break;

         case 131:
                 maybe_warnx("bzip2 magic number error");
   break;

         case 130:
                 maybe_warnx("bzip2 out of memory");
   break;

  default:
   maybe_warnx("unknown bzip2 error: %d", ret);
   break;
         }
 }

 if (ret != 128 || BZ2_bzDecompressEnd(&bzs) != 129)
         return (-1);

 return (bytes_out);
}
