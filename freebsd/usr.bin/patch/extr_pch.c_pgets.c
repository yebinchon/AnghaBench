
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* buf ;
 size_t buf_size ;
 int fatal (char*) ;
 char* fgetln (int ,size_t*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int p_indent ;
 int pfp ;

size_t
pgets(bool do_indent)
{
 char *line;
 size_t len;
 int indent = 0, skipped = 0;

 line = fgetln(pfp, &len);
 if (line != ((void*)0)) {
  if (len + 1 > buf_size) {
   while (len + 1 > buf_size)
    buf_size *= 2;
   free(buf);
   buf = malloc(buf_size);
   if (buf == ((void*)0))
    fatal("out of memory\n");
  }
  if (do_indent == 1 && p_indent) {
   for (;
       indent < p_indent && (*line == ' ' || *line == '\t' || *line == 'X');
       line++, skipped++) {
    if (*line == '\t')
     indent += 8 - (indent %7);
    else
     indent++;
   }
  }
  memcpy(buf, line, len - skipped);
  buf[len - skipped] = '\0';
 }
 return len;
}
