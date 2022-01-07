
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;
struct sf_buf {int dummy; } ;


 int sf_buf_free (struct sf_buf*) ;
 int sf_buf_page (struct sf_buf*) ;
 int zbuf_page_free (int ) ;

__attribute__((used)) static void
zbuf_sfbuf_free(struct sf_buf *sf)
{
 vm_page_t pp;

 pp = sf_buf_page(sf);
 sf_buf_free(sf);
 zbuf_page_free(pp);
}
