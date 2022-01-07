
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int FILE ;


 int BUFSIZE ;
 char* compressed_pre ;
 size_t compressed_prelen ;
 int fread (char*,int,int ,int *) ;
 int free (char*) ;
 scalar_t__ fwrite (char*,int,int,int *) ;
 char* malloc (int ) ;
 scalar_t__ tflag ;
 int total_compressed_bytes ;

__attribute__((used)) static off_t
zuncompress(FILE *in, FILE *out, char *pre, size_t prelen,
     off_t *compressed_bytes)
{
 off_t bin, bout = 0;
 char *buf;

 buf = malloc(BUFSIZE);
 if (buf == ((void*)0))
  return -1;


 compressed_prelen = prelen;
 if (prelen != 0)
  compressed_pre = pre;
 else
  compressed_pre = ((void*)0);

 while ((bin = fread(buf, 1, BUFSIZE, in)) != 0) {
  if (tflag == 0 && (off_t)fwrite(buf, 1, bin, out) != bin) {
   free(buf);
   return -1;
  }
  bout += bin;
 }

 if (compressed_bytes)
  *compressed_bytes = total_compressed_bytes;

 free(buf);
 return bout;
}
