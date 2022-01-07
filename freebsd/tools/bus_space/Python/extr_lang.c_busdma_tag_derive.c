
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*,int *,int *,int *,int *,int *,int *,int *,int *) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int * Py_BuildValue (char*,int) ;
 int bd_tag_derive (int,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static PyObject *
busdma_tag_derive(PyObject *self, PyObject *args)
{
 u_long align, bndry, maxaddr, maxsz, maxsegsz;
 u_int nsegs, datarate, flags;
 int ptid, tid;

 if (!PyArg_ParseTuple(args, "ikkkkIkII", &ptid, &align, &bndry,
     &maxaddr, &maxsz, &nsegs, &maxsegsz, &datarate, &flags))
  return (((void*)0));
 tid = bd_tag_derive(ptid, align, bndry, maxaddr, maxsz, nsegs,
     maxsegsz, datarate, flags);
 if (tid == -1) {
  PyErr_SetString(PyExc_IOError, strerror(errno));
  return (((void*)0));
 }
 return (Py_BuildValue("i", tid));
}
