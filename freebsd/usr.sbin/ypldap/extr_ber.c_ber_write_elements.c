
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;
struct ber {int fd; int * br_wbuf; int * br_wptr; int br_wend; } ;


 int DPRINTF (char*,size_t) ;
 size_t ber_calc_len (struct ber_element*) ;
 int ber_dump_element (struct ber*,struct ber_element*) ;
 int free (int *) ;
 int * malloc (size_t) ;
 int write (int,int *,size_t) ;

int
ber_write_elements(struct ber *ber, struct ber_element *root)
{
 size_t len;


 len = ber_calc_len(root);
 DPRINTF("write ber element of %zd bytes length\n", len);

 if (ber->br_wbuf != ((void*)0) && ber->br_wbuf + len > ber->br_wend) {
  free(ber->br_wbuf);
  ber->br_wbuf = ((void*)0);
 }
 if (ber->br_wbuf == ((void*)0)) {
  if ((ber->br_wbuf = malloc(len)) == ((void*)0))
   return -1;
  ber->br_wend = ber->br_wbuf + len;
 }


 ber->br_wptr = ber->br_wbuf;

 if (ber_dump_element(ber, root) == -1)
  return -1;


 if (ber->fd != -1)
  return write(ber->fd, ber->br_wbuf, len);

 return (len);
}
