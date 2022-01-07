
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm_element {int type; int c_mp_rs_read_response; int c_mp_rs_response; int c_mp_rs_request; int c_mp_ws_write_response; int c_mp_ws_write_request; int c_mp_ws_response; int c_mp_ws_request; int c_transform_response; int c_transform_request; int c_read_response; int c_read_request; int c_write_response; int c_write_request; } ;
 int TRACE_IN (void (*) (struct comm_element*)) ;
 int TRACE_OUT (void (*) (struct comm_element*)) ;
 int finalize_cache_mp_read_session_read_response (int *) ;
 int finalize_cache_mp_read_session_request (int *) ;
 int finalize_cache_mp_read_session_response (int *) ;
 int finalize_cache_mp_write_session_request (int *) ;
 int finalize_cache_mp_write_session_response (int *) ;
 int finalize_cache_mp_write_session_write_request (int *) ;
 int finalize_cache_mp_write_session_write_response (int *) ;
 int finalize_cache_read_request (int *) ;
 int finalize_cache_read_response (int *) ;
 int finalize_cache_transform_request (int *) ;
 int finalize_cache_transform_response (int *) ;
 int finalize_cache_write_request (int *) ;
 int finalize_cache_write_response (int *) ;

void
finalize_comm_element(struct comm_element *element)
{

 TRACE_IN(finalize_comm_element);
 switch (element->type) {
 case 129:
  finalize_cache_write_request(&element->c_write_request);
  break;
 case 128:
  finalize_cache_write_response(&element->c_write_response);
  break;
 case 134:
  finalize_cache_read_request(&element->c_read_request);
  break;
 case 133:
  finalize_cache_read_response(&element->c_read_response);
  break;
 case 132:
  finalize_cache_transform_request(&element->c_transform_request);
  break;
 case 131:
  finalize_cache_transform_response(
   &element->c_transform_response);
  break;
 case 138:
  finalize_cache_mp_write_session_request(
   &element->c_mp_ws_request);
  break;
 case 137:
  finalize_cache_mp_write_session_response(
   &element->c_mp_ws_response);
  break;
 case 136:
  finalize_cache_mp_write_session_write_request(
   &element->c_mp_ws_write_request);
  break;
 case 135:
  finalize_cache_mp_write_session_write_response(
   &element->c_mp_ws_write_response);
  break;
 case 140:
  finalize_cache_mp_read_session_request(
   &element->c_mp_rs_request);
  break;
 case 139:
  finalize_cache_mp_read_session_response(
   &element->c_mp_rs_response);
  break;
 case 141:
  finalize_cache_mp_read_session_read_response(
   &element->c_mp_rs_read_response);
  break;
 case 130:
  break;
 default:
 break;
 }

 element->type = 130;
 TRACE_OUT(finalize_comm_element);
}
