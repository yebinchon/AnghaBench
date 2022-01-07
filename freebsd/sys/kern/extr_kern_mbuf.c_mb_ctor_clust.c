
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* ext_buf; int ext_size; int ext_count; int ext_flags; int ext_type; int * ext_arg2; int * ext_arg1; int * ext_free; } ;
struct mbuf {char* m_data; TYPE_1__ m_ext; int m_flags; } ;


 int EXT_FLAG_EMBREF ;
 int M_EXT ;
 int m_gettype (int) ;
 int trash_ctor (void*,int,void*,int) ;

__attribute__((used)) static int
mb_ctor_clust(void *mem, int size, void *arg, int how)
{
 struct mbuf *m;




 m = (struct mbuf *)arg;
 if (m != ((void*)0)) {
  m->m_ext.ext_buf = (char *)mem;
  m->m_data = m->m_ext.ext_buf;
  m->m_flags |= M_EXT;
  m->m_ext.ext_free = ((void*)0);
  m->m_ext.ext_arg1 = ((void*)0);
  m->m_ext.ext_arg2 = ((void*)0);
  m->m_ext.ext_size = size;
  m->m_ext.ext_type = m_gettype(size);
  m->m_ext.ext_flags = EXT_FLAG_EMBREF;
  m->m_ext.ext_count = 1;
 }

 return (0);
}
