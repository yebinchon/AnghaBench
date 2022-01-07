
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nscd_connection_ {int dummy; } ;


 int CET_TRANSFORM_REQUEST ;
 int TRACE_IN (int ) ;
 int TRACE_OUT (int ) ;
 int nscd_transform ;
 int safe_read (struct nscd_connection_*,int*,int) ;
 int safe_write (struct nscd_connection_*,...) ;
 int send_credentials (struct nscd_connection_*,int ) ;
 size_t strlen (char const*) ;

int
nscd_transform__(struct nscd_connection_ *connection,
 const char *entry_name, int transformation_type)
{
 size_t name_size;
 int error_code;
 int result;

 TRACE_IN(nscd_transform);

 error_code = -1;
 result = 0;
 result = send_credentials(connection, CET_TRANSFORM_REQUEST);
 if (result != 0)
  goto fin;

 if (entry_name != ((void*)0))
  name_size = strlen(entry_name);
 else
  name_size = 0;

 result = safe_write(connection, &name_size, sizeof(size_t));
 if (result != 0)
  goto fin;

 result = safe_write(connection, &transformation_type, sizeof(int));
 if (result != 0)
  goto fin;

 if (entry_name != ((void*)0)) {
  result = safe_write(connection, entry_name, name_size);
  if (result != 0)
   goto fin;
 }

 result = safe_read(connection, &error_code, sizeof(int));
 if (result != 0)
  error_code = -1;

fin:
 TRACE_OUT(nscd_transform);
 return (error_code);
}
