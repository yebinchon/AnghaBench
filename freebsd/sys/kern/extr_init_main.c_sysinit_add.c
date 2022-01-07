
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinit {int dummy; } ;


 int M_NOWAIT ;
 int M_TEMP ;
 int free (struct sysinit**,int ) ;
 struct sysinit** malloc (int,int ,int ) ;
 struct sysinit** newsysinit ;
 struct sysinit** newsysinit_end ;
 int panic (char*) ;
 struct sysinit** sysinit ;
 struct sysinit** sysinit_end ;

void
sysinit_add(struct sysinit **set, struct sysinit **set_end)
{
 struct sysinit **newset;
 struct sysinit **sipp;
 struct sysinit **xipp;
 int count;

 count = set_end - set;
 if (newsysinit)
  count += newsysinit_end - newsysinit;
 else
  count += sysinit_end - sysinit;
 newset = malloc(count * sizeof(*sipp), M_TEMP, M_NOWAIT);
 if (newset == ((void*)0))
  panic("cannot malloc for sysinit");
 xipp = newset;
 if (newsysinit)
  for (sipp = newsysinit; sipp < newsysinit_end; sipp++)
   *xipp++ = *sipp;
 else
  for (sipp = sysinit; sipp < sysinit_end; sipp++)
   *xipp++ = *sipp;
 for (sipp = set; sipp < set_end; sipp++)
  *xipp++ = *sipp;
 if (newsysinit)
  free(newsysinit, M_TEMP);
 newsysinit = newset;
 newsysinit_end = newset + count;
}
