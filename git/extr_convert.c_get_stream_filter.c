
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stream_filter {int dummy; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
struct conv_attrs {scalar_t__ crlf_action; scalar_t__ ident; scalar_t__ working_tree_encoding; TYPE_1__* drv; } ;
struct TYPE_2__ {scalar_t__ clean; scalar_t__ smudge; scalar_t__ process; } ;


 scalar_t__ CRLF_AUTO ;
 scalar_t__ CRLF_AUTO_CRLF ;
 scalar_t__ EOL_CRLF ;
 struct stream_filter* cascade_filter (struct stream_filter*,int *) ;
 int convert_attrs (struct index_state const*,struct conv_attrs*,char const*) ;
 struct stream_filter* ident_filter (struct object_id const*) ;
 int * lf_to_crlf_filter () ;
 int null_filter_singleton ;
 scalar_t__ output_eol (scalar_t__) ;

struct stream_filter *get_stream_filter(const struct index_state *istate,
     const char *path,
     const struct object_id *oid)
{
 struct conv_attrs ca;
 struct stream_filter *filter = ((void*)0);

 convert_attrs(istate, &ca, path);
 if (ca.drv && (ca.drv->process || ca.drv->smudge || ca.drv->clean))
  return ((void*)0);

 if (ca.working_tree_encoding)
  return ((void*)0);

 if (ca.crlf_action == CRLF_AUTO || ca.crlf_action == CRLF_AUTO_CRLF)
  return ((void*)0);

 if (ca.ident)
  filter = ident_filter(oid);

 if (output_eol(ca.crlf_action) == EOL_CRLF)
  filter = cascade_filter(filter, lf_to_crlf_filter());
 else
  filter = cascade_filter(filter, &null_filter_singleton);

 return filter;
}
