
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {scalar_t__ buffer; } ;


 int free (scalar_t__) ;
 int memset (struct options*,int ,int) ;

__attribute__((used)) static void
reset_options(struct options *opt)
{
 if (opt->buffer)
  free(opt->buffer);
 memset(opt, 0, sizeof(*opt));
 return;
}
