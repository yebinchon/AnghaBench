
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsd_sockmsg {int len; } ;


 int KASSERT (int,char*) ;
 int xs_dev_watch_message_parse_string (char const**,char const*,char const**) ;

__attribute__((used)) static int
xs_dev_watch_message_parse(const struct xsd_sockmsg *msg, const char **path_r,
    const char **token_r)
{
 const char *p, *end;
 int error;

 p = (const char *)msg + sizeof(*msg);
 end = p + msg->len;
 KASSERT(p <= end, ("payload overflow"));

 error = xs_dev_watch_message_parse_string(&p, end, path_r);
 if (error)
  return (error);
 error = xs_dev_watch_message_parse_string(&p, end, token_r);
 if (error)
  return (error);

 return (0);
}
