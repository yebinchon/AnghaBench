
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptime_data {int did_adj4dst; } ;


 int TNYET_ADJ4DST ;
 struct ptime_data* malloc (int) ;
 int memcpy (struct ptime_data*,struct ptime_data const*,int) ;
 int memset (struct ptime_data*,char,int) ;

struct ptime_data *
ptime_init(const struct ptime_data *optsrc)
{
 struct ptime_data *newdata;

 newdata = malloc(sizeof(struct ptime_data));
 if (optsrc != ((void*)0)) {
  memcpy(newdata, optsrc, sizeof(struct ptime_data));
 } else {
  memset(newdata, '\0', sizeof(struct ptime_data));
  newdata->did_adj4dst = TNYET_ADJ4DST;
 }

 return (newdata);
}
