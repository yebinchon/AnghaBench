
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint32_t ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*,long*,int *) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int Py_RETURN_NONE ;
 int bs_write (int,long,int *,int) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static PyObject *
bus_write_4(PyObject *self, PyObject *args)
{
 long ofs;
 int rid;
 uint32_t val;

 if (!PyArg_ParseTuple(args, "ilI", &rid, &ofs, &val))
  return (((void*)0));
 if (!bs_write(rid, ofs, &val, sizeof(val))) {
  PyErr_SetString(PyExc_IOError, strerror(errno));
  return (((void*)0));
 }
 Py_RETURN_NONE;
}
