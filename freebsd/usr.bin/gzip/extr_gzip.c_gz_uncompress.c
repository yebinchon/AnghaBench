
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t avail_in; unsigned char* next_in; void* avail_out; unsigned char* next_out; scalar_t__ opaque; int * zfree; int * zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef int uint32_t ;
typedef int uLong ;
typedef int ssize_t ;
typedef int off_t ;
typedef int Bytef ;


 int ADVANCE () ;
 void* BUFLEN ;
 int COMMENT ;
 int EXTRA_FIELD ;
 unsigned char GZIP_MAGIC0 ;
 unsigned char GZIP_MAGIC1 ;
 unsigned char GZIP_OMAGIC1 ;
 int HEAD_CRC ;
 int MAX_WBITS ;
 int ORIG_NAME ;


 unsigned char Z_DEFLATED ;
 int Z_FINISH ;


 int const* Z_NULL ;



 int check_siginfo () ;
 int crc32 (int,int const*,unsigned int) ;
 int exit_value ;
 int free (char*) ;
 int infile_newdata (int) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit2 (TYPE_1__*,int ) ;
 int le32dec (int*) ;
 char* malloc (void*) ;
 int maybe_err (char*) ;
 int maybe_warn (char*,...) ;
 int maybe_warnx (char*,...) ;
 int memmove (char*,unsigned char*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int read (int,unsigned char*,void*) ;
 int tflag ;
 int write_retry (int,char*,int) ;

__attribute__((used)) static off_t
gz_uncompress(int in, int out, char *pre, size_t prelen, off_t *gsizep,
       const char *filename)
{
 z_stream z;
 char *outbufp, *inbufp;
 off_t out_tot = -1, in_tot = 0;
 uint32_t out_sub_tot = 0;
 enum {
  GZSTATE_MAGIC0,
  GZSTATE_MAGIC1,
  GZSTATE_METHOD,
  GZSTATE_FLAGS,
  GZSTATE_SKIPPING,
  GZSTATE_EXTRA,
  GZSTATE_EXTRA2,
  GZSTATE_EXTRA3,
  GZSTATE_ORIGNAME,
  GZSTATE_COMMENT,
  GZSTATE_HEAD_CRC1,
  GZSTATE_HEAD_CRC2,
  GZSTATE_INIT,
  GZSTATE_READ,
  GZSTATE_CRC,
  GZSTATE_LEN,
 } state = GZSTATE_MAGIC0;
 int flags = 0, skip_count = 0;
 int error = 128, done_reading = 0;
 uLong crc = 0;
 ssize_t wr;
 int needmore = 0;



 if ((outbufp = malloc(BUFLEN)) == ((void*)0)) {
  maybe_err("malloc failed");
  goto out2;
 }
 if ((inbufp = malloc(BUFLEN)) == ((void*)0)) {
  maybe_err("malloc failed");
  goto out1;
 }

 memset(&z, 0, sizeof z);
 z.avail_in = prelen;
 z.next_in = (unsigned char *)pre;
 z.avail_out = BUFLEN;
 z.next_out = (unsigned char *)outbufp;
 z.zalloc = ((void*)0);
 z.zfree = ((void*)0);
 z.opaque = 0;

 in_tot = prelen;
 out_tot = 0;

 for (;;) {
  check_siginfo();
  if ((z.avail_in == 0 || needmore) && done_reading == 0) {
   ssize_t in_size;

   if (z.avail_in > 0) {
    memmove(inbufp, z.next_in, z.avail_in);
   }
   z.next_in = (unsigned char *)inbufp;
   in_size = read(in, z.next_in + z.avail_in,
       BUFLEN - z.avail_in);

   if (in_size == -1) {
    maybe_warn("failed to read stdin");
    goto stop_and_fail;
   } else if (in_size == 0) {
    done_reading = 1;
   }
   infile_newdata(in_size);

   z.avail_in += in_size;
   needmore = 0;

   in_tot += in_size;
  }
  if (z.avail_in == 0) {
   if (done_reading && state != GZSTATE_MAGIC0) {
    maybe_warnx("%s: unexpected end of file",
         filename);
    goto stop_and_fail;
   }
   goto stop;
  }
  switch (state) {
  case GZSTATE_MAGIC0:
   if (*z.next_in != GZIP_MAGIC0) {
    if (in_tot > 0) {
     maybe_warnx("%s: trailing garbage "
          "ignored", filename);
     exit_value = 2;
     goto stop;
    }
    maybe_warnx("input not gziped (MAGIC0)");
    goto stop_and_fail;
   }
   { z.next_in++; z.avail_in--; };
   state++;
   out_sub_tot = 0;
   crc = crc32(0L, Z_NULL, 0);
   break;

  case GZSTATE_MAGIC1:
   if (*z.next_in != GZIP_MAGIC1 &&
       *z.next_in != GZIP_OMAGIC1) {
    maybe_warnx("input not gziped (MAGIC1)");
    goto stop_and_fail;
   }
   { z.next_in++; z.avail_in--; };
   state++;
   break;

  case GZSTATE_METHOD:
   if (*z.next_in != Z_DEFLATED) {
    maybe_warnx("unknown compression method");
    goto stop_and_fail;
   }
   { z.next_in++; z.avail_in--; };
   state++;
   break;

  case GZSTATE_FLAGS:
   flags = *z.next_in;
   { z.next_in++; z.avail_in--; };
   skip_count = 6;
   state++;
   break;

  case GZSTATE_SKIPPING:
   if (skip_count > 0) {
    skip_count--;
    { z.next_in++; z.avail_in--; };
   } else
    state++;
   break;

  case GZSTATE_EXTRA:
   if ((flags & EXTRA_FIELD) == 0) {
    state = GZSTATE_ORIGNAME;
    break;
   }
   skip_count = *z.next_in;
   { z.next_in++; z.avail_in--; };
   state++;
   break;

  case GZSTATE_EXTRA2:
   skip_count |= ((*z.next_in) << 8);
   { z.next_in++; z.avail_in--; };
   state++;
   break;

  case GZSTATE_EXTRA3:
   if (skip_count > 0) {
    skip_count--;
    { z.next_in++; z.avail_in--; };
   } else
    state++;
   break;

  case GZSTATE_ORIGNAME:
   if ((flags & ORIG_NAME) == 0) {
    state++;
    break;
   }
   if (*z.next_in == 0)
    state++;
   { z.next_in++; z.avail_in--; };
   break;

  case GZSTATE_COMMENT:
   if ((flags & COMMENT) == 0) {
    state++;
    break;
   }
   if (*z.next_in == 0)
    state++;
   { z.next_in++; z.avail_in--; };
   break;

  case GZSTATE_HEAD_CRC1:
   if (flags & HEAD_CRC)
    skip_count = 2;
   else
    skip_count = 0;
   state++;
   break;

  case GZSTATE_HEAD_CRC2:
   if (skip_count > 0) {
    skip_count--;
    { z.next_in++; z.avail_in--; };
   } else
    state++;
   break;

  case GZSTATE_INIT:
   if (inflateInit2(&z, -MAX_WBITS) != 130) {
    maybe_warnx("failed to inflateInit");
    goto stop_and_fail;
   }
   state++;
   break;

  case GZSTATE_READ:
   error = inflate(&z, Z_FINISH);
   switch (error) {

   case 134:
    if (z.avail_out > 0 && !done_reading)
     continue;

   case 129:
   case 130:
    break;

   case 131:
    maybe_warnx("Z_NEED_DICT error");
    goto stop_and_fail;
   case 133:
    maybe_warnx("data stream error");
    goto stop_and_fail;
   case 128:
    maybe_warnx("internal stream error");
    goto stop_and_fail;
   case 132:
    maybe_warnx("memory allocation error");
    goto stop_and_fail;

   default:
    maybe_warn("unknown error from inflate(): %d",
        error);
   }
   wr = BUFLEN - z.avail_out;

   if (wr != 0) {
    crc = crc32(crc, (const Bytef *)outbufp, (unsigned)wr);
    if (


        tflag == 0 &&

        write_retry(out, outbufp, wr) != wr) {
     maybe_warn("error writing to output");
     goto stop_and_fail;
    }

    out_tot += wr;
    out_sub_tot += wr;
   }

   if (error == 129) {
    inflateEnd(&z);
    state++;
   }

   z.next_out = (unsigned char *)outbufp;
   z.avail_out = BUFLEN;

   break;
  case GZSTATE_CRC:
   {
    uLong origcrc;

    if (z.avail_in < 4) {
     if (!done_reading) {
      needmore = 1;
      continue;
     }
     maybe_warnx("truncated input");
     goto stop_and_fail;
    }
    origcrc = le32dec(&z.next_in[0]);
    if (origcrc != crc) {
     maybe_warnx("invalid compressed"
          " data--crc error");
     goto stop_and_fail;
    }
   }

   z.avail_in -= 4;
   z.next_in += 4;

   if (!z.avail_in && done_reading) {
    goto stop;
   }
   state++;
   break;
  case GZSTATE_LEN:
   {
    uLong origlen;

    if (z.avail_in < 4) {
     if (!done_reading) {
      needmore = 1;
      continue;
     }
     maybe_warnx("truncated input");
     goto stop_and_fail;
    }
    origlen = le32dec(&z.next_in[0]);

    if (origlen != out_sub_tot) {
     maybe_warnx("invalid compressed"
          " data--length error");
     goto stop_and_fail;
    }
   }

   z.avail_in -= 4;
   z.next_in += 4;

   if (error < 0) {
    maybe_warnx("decompression error");
    goto stop_and_fail;
   }
   state = GZSTATE_MAGIC0;
   break;
  }
  continue;
stop_and_fail:
  out_tot = -1;
stop:
  break;
 }
 if (state > GZSTATE_INIT)
  inflateEnd(&z);

 free(inbufp);
out1:
 free(outbufp);
out2:
 if (gsizep)
  *gsizep = in_tot;
 return (out_tot);
}
