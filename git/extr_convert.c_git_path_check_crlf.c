
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check_item {char* value; } ;
typedef enum crlf_action { ____Placeholder_crlf_action } crlf_action ;


 scalar_t__ ATTR_FALSE (char const*) ;
 scalar_t__ ATTR_TRUE (char const*) ;
 scalar_t__ ATTR_UNSET (char const*) ;
 int CRLF_AUTO ;
 int CRLF_BINARY ;
 int CRLF_TEXT ;
 int CRLF_TEXT_INPUT ;
 int CRLF_UNDEFINED ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum crlf_action git_path_check_crlf(struct attr_check_item *check)
{
 const char *value = check->value;

 if (ATTR_TRUE(value))
  return CRLF_TEXT;
 else if (ATTR_FALSE(value))
  return CRLF_BINARY;
 else if (ATTR_UNSET(value))
  ;
 else if (!strcmp(value, "input"))
  return CRLF_TEXT_INPUT;
 else if (!strcmp(value, "auto"))
  return CRLF_AUTO;
 return CRLF_UNDEFINED;
}
