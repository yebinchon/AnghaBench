
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_element {int type; int c_mp_rs_read_response; int c_mp_rs_response; int c_mp_rs_request; int c_mp_ws_write_response; int c_mp_ws_write_request; int c_mp_ws_response; int c_mp_ws_request; int c_transform_response; int c_transform_request; int c_read_response; int c_read_request; int c_write_response; int c_write_request; } ;
typedef enum comm_element_t { ____Placeholder_comm_element_t } comm_element_t ;
 int LOG_ERR_2 (char*,char*) ;
 int TRACE_IN (void (*) (struct comm_element*,int)) ;
 int TRACE_OUT (void (*) (struct comm_element*,int)) ;
 int init_cache_mp_read_session_read_response (int *) ;
 int init_cache_mp_read_session_request (int *) ;
 int init_cache_mp_read_session_response (int *) ;
 int init_cache_mp_write_session_request (int *) ;
 int init_cache_mp_write_session_response (int *) ;
 int init_cache_mp_write_session_write_request (int *) ;
 int init_cache_mp_write_session_write_response (int *) ;
 int init_cache_read_request (int *) ;
 int init_cache_read_response (int *) ;
 int init_cache_transform_request (int *) ;
 int init_cache_transform_response (int *) ;
 int init_cache_write_request (int *) ;
 int init_cache_write_response (int *) ;
 int memset (struct comm_element*,int ,int) ;

void
init_comm_element(struct comm_element *element, enum comm_element_t type)
{

 TRACE_IN(init_comm_element);
 memset(element, 0, sizeof(struct comm_element));

 switch (type) {
 case 129:
  init_cache_write_request(&element->c_write_request);
  break;
 case 128:
  init_cache_write_response(&element->c_write_response);
  break;
 case 134:
  init_cache_read_request(&element->c_read_request);
  break;
 case 133:
  init_cache_read_response(&element->c_read_response);
  break;
 case 132:
  init_cache_transform_request(&element->c_transform_request);
  break;
 case 131:
  init_cache_transform_response(&element->c_transform_response);
  break;
 case 138:
  init_cache_mp_write_session_request(&element->c_mp_ws_request);
  break;
 case 137:
  init_cache_mp_write_session_response(&element->c_mp_ws_response);
  break;
 case 136:
  init_cache_mp_write_session_write_request(
   &element->c_mp_ws_write_request);
  break;
 case 135:
  init_cache_mp_write_session_write_response(
   &element->c_mp_ws_write_response);
  break;
 case 140:
  init_cache_mp_read_session_request(&element->c_mp_rs_request);
  break;
 case 139:
  init_cache_mp_read_session_response(&element->c_mp_rs_response);
  break;
 case 141:
  init_cache_mp_read_session_read_response(
   &element->c_mp_rs_read_response);
  break;
 case 130:
  break;
 default:
  LOG_ERR_2("init_comm_element", "invalid communication element");
  TRACE_OUT(init_comm_element);
 return;
 }

 element->type = type;
 TRACE_OUT(init_comm_element);
}
