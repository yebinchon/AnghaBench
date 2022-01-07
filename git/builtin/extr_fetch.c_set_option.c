
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int url; } ;


 int _ (char*) ;
 int die (int ,char const*,char const*,int ) ;
 int transport_set_option (struct transport*,char const*,char const*) ;
 int warning (int ,char const*,int ) ;

__attribute__((used)) static void set_option(struct transport *transport, const char *name, const char *value)
{
 int r = transport_set_option(transport, name, value);
 if (r < 0)
  die(_("Option \"%s\" value \"%s\" is not valid for %s"),
      name, value, transport->url);
 if (r > 0)
  warning(_("Option \"%s\" is ignored for %s\n"),
   name, transport->url);
}
