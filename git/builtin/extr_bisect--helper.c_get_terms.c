
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct bisect_terms {void* term_good; void* term_bad; } ;
typedef int FILE ;


 struct strbuf STRBUF_INIT ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int free_terms (struct bisect_terms*) ;
 int git_path_bisect_terms () ;
 void* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_getline_lf (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int get_terms(struct bisect_terms *terms)
{
 struct strbuf str = STRBUF_INIT;
 FILE *fp = ((void*)0);
 int res = 0;

 fp = fopen(git_path_bisect_terms(), "r");
 if (!fp) {
  res = -1;
  goto finish;
 }

 free_terms(terms);
 strbuf_getline_lf(&str, fp);
 terms->term_bad = strbuf_detach(&str, ((void*)0));
 strbuf_getline_lf(&str, fp);
 terms->term_good = strbuf_detach(&str, ((void*)0));

finish:
 if (fp)
  fclose(fp);
 strbuf_release(&str);
 return res;
}
