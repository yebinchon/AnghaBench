
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tool_mw {char size; } ;
struct sysctl_req {int dummy; } ;
struct sbuf {int s_error; } ;
typedef char ssize_t ;


 char DEFAULT_MW_SIZE ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_for_sysctl (int *,int *,char,struct sysctl_req*) ;
 int sbuf_printf (struct sbuf*,char*,...) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int
tool_mw_read_fn(struct sysctl_req *req, struct tool_mw *inmw, char *read_addr,
    int *cmd_op, ssize_t buf_off, ssize_t buf_size, char *type)
{
 ssize_t index, size;
 struct sbuf *sb;
 int i, loop, rc;
 char *tmp;


 if (*cmd_op == 0)
  return (0);


 index = buf_off;
 tmp = read_addr;
 tmp += index;
 loop = ((buf_size == 0) || (buf_size > DEFAULT_MW_SIZE)) ?
     DEFAULT_MW_SIZE : buf_size;




 size = loop + 256;
 sb = sbuf_new_for_sysctl(((void*)0), ((void*)0), size, req);
 if (sb == ((void*)0)) {
  rc = sb->s_error;
  return (rc);
 }

 if (!strcmp(type, "mw"))
  sbuf_printf(sb, "\nConfigured MW size\t: %zu\n", inmw->size);
 else if (!strcmp(type, "peer_mw"))
  sbuf_printf(sb, "\nConfigured Peer MW size\t: %zu\n",
      inmw->size);
 sbuf_printf(sb, "R/W size\t\t: %zi\nR/W Offset\t\t: %zi\n\nData\n----"
     "->", buf_size, buf_off);
 for (i = 0 ; i < loop; i++) {
  if ((i % 32) == 0) {
   sbuf_printf(sb, "\n%08zx:", index);
   index += 32;
  }
  if ((i % 8) == 0)
   sbuf_printf(sb, "    ");
  sbuf_printf(sb, "%02hhx", *(tmp+i));
 }
 if (buf_size > DEFAULT_MW_SIZE)
  sbuf_printf(sb, "\n\nNOTE: Truncating read size %zi->1024 "
      "bytes\n", buf_size);


 *cmd_op -= 1;
 rc = sbuf_finish(sb);
 sbuf_delete(sb);

 return (rc);
}
