
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct executable {int x_len; int x_buf; } ;
typedef int FILE ;


 int assert (int ) ;
 int err (int,char*,char const*) ;
 size_t fwrite (int ,int ,int,int *) ;

__attribute__((used)) static void
save(struct executable *x, FILE *fp, const char *path)
{
 size_t nwritten;

 assert(fp != ((void*)0));
 assert(path != ((void*)0));

 nwritten = fwrite(x->x_buf, x->x_len, 1, fp);
 if (nwritten != 1)
  err(1, "%s: fwrite", path);
}
