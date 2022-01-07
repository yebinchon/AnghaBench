
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidname {int dummy; } ;
struct oid {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int SHUT_WR ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 scalar_t__ buf_gzip (char*,size_t,char*,size_t*) ;
 int dprintf (int ,char*,char const*,size_t) ;
 int err (int,char*) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 char* malloc (size_t) ;
 int oid_get_by_name (struct oid*,char*) ;
 scalar_t__ oid_get_next (struct oid*,struct oid*) ;
 int oid_get_root (struct oid*) ;
 scalar_t__ oid_is_beneath (struct oid*,struct oid*) ;
 int oid_print (struct oid*,struct oidname*,int,int *) ;
 int oidname_init (struct oidname*) ;
 int * open_memstream (char**,size_t*) ;
 scalar_t__ optind ;
 scalar_t__ read (int ,char*,int) ;
 scalar_t__ shutdown (int ,int ) ;
 int * stdout ;
 int usage () ;
 int write (int ,char*,size_t) ;

int
main(int argc, char *argv[])
{
 struct oidname on;
 char *http_buf;
 FILE *fp;
 size_t http_buflen;
 int ch;
 bool gzip_mode, http_mode, print_descriptions;


 gzip_mode = http_mode = print_descriptions = 0;
 while ((ch = getopt(argc, argv, "dgh")) != -1) {
  switch (ch) {
  case 'd':
   print_descriptions = 1;
   break;
  case 'g':
   gzip_mode = 1;
   break;
  case 'h':
   http_mode = 1;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;


 if (http_mode) {
  fp = open_memstream(&http_buf, &http_buflen);
  if (fp == ((void*)0))
   err(1, "open_memstream");
 } else {
  fp = stdout;
 }

 oidname_init(&on);
 if (argc == 0) {
  struct oid o;


  oid_get_root(&o);
  do {
   oid_print(&o, &on, print_descriptions, fp);
  } while (oid_get_next(&o, &o));
 } else {
  int i;


  for (i = 0; i < argc; ++i) {
   struct oid o, root;

   oid_get_by_name(&root, argv[i]);
   o = root;
   do {
    oid_print(&o, &on, print_descriptions, fp);
   } while (oid_get_next(&o, &o) &&
       oid_is_beneath(&o, &root));
  }
 }

 if (http_mode) {
  const char *content_encoding = "";

  if (ferror(fp) || fclose(fp) != 0)
   err(1, "Cannot generate output");


  if (gzip_mode) {
   char *buf;
   size_t buflen;

   buflen = http_buflen;
   buf = malloc(buflen);
   if (buf == ((void*)0))
    err(1, "Cannot allocate compression buffer");
   if (buf_gzip(http_buf, http_buflen, buf, &buflen)) {
    content_encoding = "Content-Encoding: gzip\r\n";
    free(http_buf);
    http_buf = buf;
    http_buflen = buflen;
   } else {
    free(buf);
   }
  }


  dprintf(STDOUT_FILENO,
      "HTTP/1.1 200 OK\r\n"
      "Connection: close\r\n"
      "%s"
      "Content-Length: %zu\r\n"
      "Content-Type: text/plain; version=0.0.4\r\n"
      "\r\n",
      content_encoding, http_buflen);
  write(STDOUT_FILENO, http_buf, http_buflen);
  free(http_buf);


  if (shutdown(STDIN_FILENO, SHUT_WR) == 0) {
   char buf[1024];

   while (read(STDIN_FILENO, buf, sizeof(buf)) > 0) {
   }
  }
 }
 return (0);
}
