
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cb_file {int cf_isdir; } ;



__attribute__((used)) static int
cb_isdir(void *arg, void *h)
{
 struct cb_file *cf = h;

 return (cf->cf_isdir);
}
