
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_format {scalar_t__ format; } ;
struct object_id {int dummy; } ;


 int GPG_VERIFY_OMIT_STATUS ;
 int GPG_VERIFY_VERBOSE ;
 scalar_t__ gpg_verify_tag (struct object_id const*,char const*,int) ;
 int pretty_print_ref (char const*,struct object_id const*,struct ref_format const*) ;

__attribute__((used)) static int verify_tag(const char *name, const char *ref,
        const struct object_id *oid, const void *cb_data)
{
 int flags;
 const struct ref_format *format = cb_data;
 flags = GPG_VERIFY_VERBOSE;

 if (format->format)
  flags = GPG_VERIFY_OMIT_STATUS;

 if (gpg_verify_tag(oid, name, flags))
  return -1;

 if (format->format)
  pretty_print_ref(name, oid, format);

 return 0;
}
