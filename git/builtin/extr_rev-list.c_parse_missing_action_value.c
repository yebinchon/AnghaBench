
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MA_ALLOW_ANY ;
 int MA_ALLOW_PROMISOR ;
 int MA_ERROR ;
 int MA_PRINT ;
 int arg_missing_action ;
 scalar_t__ fetch_if_missing ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static inline int parse_missing_action_value(const char *value)
{
 if (!strcmp(value, "error")) {
  arg_missing_action = MA_ERROR;
  return 1;
 }

 if (!strcmp(value, "allow-any")) {
  arg_missing_action = MA_ALLOW_ANY;
  fetch_if_missing = 0;
  return 1;
 }

 if (!strcmp(value, "print")) {
  arg_missing_action = MA_PRINT;
  fetch_if_missing = 0;
  return 1;
 }

 if (!strcmp(value, "allow-promisor")) {
  arg_missing_action = MA_ALLOW_PROMISOR;
  fetch_if_missing = 0;
  return 1;
 }

 return 0;
}
