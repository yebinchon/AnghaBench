
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int error (char*,...) ;
 int isdigit (char) ;
 scalar_t__ parse_oid_hex (char*,struct object_id*,char const**) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int parse_index_info(char *p, int *mode1, int *mode2,
       struct object_id *oid1, struct object_id *oid2,
       char *status)
{
 if (*p != ':')
  return error("expected ':', got '%c'", *p);
 *mode1 = (int)strtol(p + 1, &p, 8);
 if (*p != ' ')
  return error("expected ' ', got '%c'", *p);
 *mode2 = (int)strtol(p + 1, &p, 8);
 if (*p != ' ')
  return error("expected ' ', got '%c'", *p);
 if (parse_oid_hex(++p, oid1, (const char **)&p))
  return error("expected object ID, got '%s'", p);
 if (*p != ' ')
  return error("expected ' ', got '%c'", *p);
 if (parse_oid_hex(++p, oid2, (const char **)&p))
  return error("expected object ID, got '%s'", p);
 if (*p != ' ')
  return error("expected ' ', got '%c'", *p);
 *status = *++p;
 if (!*status)
  return error("missing status");
 if (p[1] && !isdigit(p[1]))
  return error("unexpected trailer: '%s'", p + 1);
 return 0;
}
