
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CM_MSG_MAXLEN ;
 int CM_TYPE_REQ_SET_PROP ;
 int action_plgeneric (int ,char*,char*) ;

__attribute__((used)) static int
action_propset(char *argv)
{
 char buf[CM_MSG_MAXLEN];

 return (action_plgeneric(CM_TYPE_REQ_SET_PROP, argv, buf));
}
