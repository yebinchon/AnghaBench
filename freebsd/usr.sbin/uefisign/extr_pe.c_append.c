
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct executable {int x_len; int * x_buf; } ;
typedef int off_t ;


 int err (int,char*) ;
 int memcpy (int *,void*,size_t) ;
 int memset (int *,int ,size_t) ;
 int * realloc (int *,int) ;

__attribute__((used)) static off_t
append(struct executable *x, void *ptr, size_t len, size_t aligment)
{
 off_t off;

 off = x->x_len;
 x->x_buf = realloc(x->x_buf, x->x_len + len + aligment);
 if (x->x_buf == ((void*)0))
  err(1, "realloc");
 memcpy(x->x_buf + x->x_len, ptr, len);
 memset(x->x_buf + x->x_len + len, 0, aligment);
 x->x_len += len + aligment;

 return (off);
}
