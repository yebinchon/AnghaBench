; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_svcout.c_write_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_17__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"void\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"(struct svc_req *%s, \00", align 1
@RQSTP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"SVCXPRT *%s)\0A\00", align 1
@TRANSP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"\09union {\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"_arg;\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\09\09%s\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\09\09int fill;\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"\09} %s;\0A\00", align 1
@ARG = common dso_local global i32 0, align 4
@mtflag = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"_res;\0A\00", align 1
@RESULT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"\09bool_t %s;\0A\00", align 1
@RETVAL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"\09char *%s;\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\09xdrproc_t xdr_%s, xdr_%s;\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"\09bool_t (*%s)(char *, void *, struct svc_req *);\0A\00", align 1
@ROUTINE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [41 x i8] c"\09char *(*%s)(char *, struct svc_req *);\0A\00", align 1
@timerflag = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [39 x i8] c"\09pthread_mutex_lock(&_svcstate_lock);\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"\09_rpcsvcstate = _SERVING;\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"\09pthread_mutex_unlock(&_svcstate_lock);\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"\09switch (%s->rq_proc) {\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"\09case NULLPROC:\0A\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"\09\09(void) svc_sendreply(%s,\0A\09\09\09(xdrproc_t) xdr_void, (char *)NULL);\0A\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"\09case %s:\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"\09\09%s = (bool_t (*) (char *,  void *,  struct svc_req *))\00", align 1
@.str.28 = private unnamed_addr constant [46 x i8] c"\09\09%s = (char *(*)(char *, struct svc_req *)) \00", align 1
@newstyle = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"\09\09break;\0A\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"\09default:\0A\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"noproc\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"\09(void) memset((char *)&%s, 0, sizeof (%s));\0A\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"getargs\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"(caddr_t) &\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"\09%s = (*%s)((char *)&%s, %s);\0A\00", align 1
@.str.40 = private unnamed_addr constant [53 x i8] c"\09%s = (bool_t) (*%s)((char *)&%s, (void *)&%s, %s);\0A\00", align 1
@.str.41 = private unnamed_addr constant [59 x i8] c"\09if (%s > 0 && !svc_sendreply(%s, xdr_%s, (char *)&%s)) {\0A\00", align 1
@.str.42 = private unnamed_addr constant [54 x i8] c"\09if (%s != NULL && !svc_sendreply(%s, xdr_%s, %s)) {\0A\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"systemerr\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"freeargs\00", align 1
@_errbuf = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [25 x i8] c"unable to free arguments\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"\09\09exit(1);\0A\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"\09if (!\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"_freeresult(%s, xdr_%s, (caddr_t) &%s))\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"unable to free results\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i8*)* @write_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_program(%struct.TYPE_18__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %5, align 8
  br label %13

13:                                               ; preds = %411, %2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %15 = icmp ne %struct.TYPE_16__* %14, null
  br i1 %15, label %16, label %415

16:                                               ; preds = %13
  %17 = load i32, i32* @fout, align 4
  %18 = call i32 (i32, i8*, ...) @f_print(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @fout, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i32, i8*, ...) @f_print(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* @fout, align 4
  %27 = call i32 (i32, i8*, ...) @f_print(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pvname(i32 %30, i32 %33)
  %35 = load i32, i32* @fout, align 4
  %36 = load i32, i32* @RQSTP, align 4
  %37 = call i32 (i32, i8*, ...) @f_print(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @fout, align 4
  %39 = load i32, i32* @TRANSP, align 4
  %40 = call i32 (i32, i8*, ...) @f_print(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @fout, align 4
  %42 = call i32 (i32, i8*, ...) @f_print(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %43 = load i32, i32* @fout, align 4
  %44 = call i32 (i32, i8*, ...) @f_print(i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  store %struct.TYPE_17__* %47, %struct.TYPE_17__** %6, align 8
  br label %48

48:                                               ; preds = %113, %25
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %50 = icmp ne %struct.TYPE_17__* %49, null
  br i1 %50, label %51, label %117

51:                                               ; preds = %48
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %94

56:                                               ; preds = %51
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @streq(i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %113

67:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  %68 = load i32, i32* @fout, align 4
  %69 = call i32 (i32, i8*, ...) @f_print(i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ptype(i32 %76, i32 %83, i32 0)
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @pvname(i32 %87, i32 %90)
  %92 = load i32, i32* @fout, align 4
  %93 = call i32 (i32, i8*, ...) @f_print(i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %112

94:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  %95 = load i32, i32* @fout, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @f_print(i32 %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @fout, align 4
  %102 = call i32 (i32, i8*, ...) @f_print(i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @pvname(i32 %105, i32 %108)
  %110 = load i32, i32* @fout, align 4
  %111 = call i32 (i32, i8*, ...) @f_print(i32 %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %112

112:                                              ; preds = %94, %67
  br label %113

113:                                              ; preds = %112, %66
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %115, align 8
  store %struct.TYPE_17__* %116, %struct.TYPE_17__** %6, align 8
  br label %48

117:                                              ; preds = %48
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @fout, align 4
  %122 = call i32 (i32, i8*, ...) @f_print(i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* @fout, align 4
  %125 = load i32, i32* @ARG, align 4
  %126 = call i32 (i32, i8*, ...) @f_print(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %125)
  %127 = load i64, i64* @mtflag, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %175

129:                                              ; preds = %123
  %130 = load i32, i32* @fout, align 4
  %131 = call i32 (i32, i8*, ...) @f_print(i32 %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  store %struct.TYPE_17__* %134, %struct.TYPE_17__** %6, align 8
  br label %135

135:                                              ; preds = %164, %129
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %137 = icmp ne %struct.TYPE_17__* %136, null
  br i1 %137, label %138, label %168

138:                                              ; preds = %135
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @streq(i32 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %164

145:                                              ; preds = %138
  %146 = load i32, i32* @fout, align 4
  %147 = call i32 (i32, i8*, ...) @f_print(i32 %146, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ptype(i32 %150, i32 %153, i32 0)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @pvname(i32 %157, i32 %160)
  %162 = load i32, i32* @fout, align 4
  %163 = call i32 (i32, i8*, ...) @f_print(i32 %162, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  br label %164

164:                                              ; preds = %145, %144
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %166, align 8
  store %struct.TYPE_17__* %167, %struct.TYPE_17__** %6, align 8
  br label %135

168:                                              ; preds = %135
  %169 = load i32, i32* @fout, align 4
  %170 = load i32, i32* @RESULT, align 4
  %171 = call i32 (i32, i8*, ...) @f_print(i32 %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @fout, align 4
  %173 = load i32, i32* @RETVAL, align 4
  %174 = call i32 (i32, i8*, ...) @f_print(i32 %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %173)
  br label %179

175:                                              ; preds = %123
  %176 = load i32, i32* @fout, align 4
  %177 = load i32, i32* @RESULT, align 4
  %178 = call i32 (i32, i8*, ...) @f_print(i32 %176, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %175, %168
  %180 = load i32, i32* @fout, align 4
  %181 = load i32, i32* @ARG, align 4
  %182 = load i32, i32* @RESULT, align 4
  %183 = call i32 (i32, i8*, ...) @f_print(i32 %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i32 %181, i32 %182)
  %184 = load i64, i64* @mtflag, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load i32, i32* @fout, align 4
  %188 = load i32, i32* @ROUTINE, align 4
  %189 = call i32 (i32, i8*, ...) @f_print(i32 %187, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i64 0, i64 0), i32 %188)
  br label %194

190:                                              ; preds = %179
  %191 = load i32, i32* @fout, align 4
  %192 = load i32, i32* @ROUTINE, align 4
  %193 = call i32 (i32, i8*, ...) @f_print(i32 %191, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %192)
  br label %194

194:                                              ; preds = %190, %186
  %195 = load i32, i32* @fout, align 4
  %196 = call i32 (i32, i8*, ...) @f_print(i32 %195, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %197 = load i64, i64* @timerflag, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %194
  %200 = load i64, i64* @mtflag, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* @fout, align 4
  %204 = call i32 (i32, i8*, ...) @f_print(i32 %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i32, i32* @fout, align 4
  %207 = call i32 (i32, i8*, ...) @f_print(i32 %206, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  %208 = load i64, i64* @mtflag, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load i32, i32* @fout, align 4
  %212 = call i32 (i32, i8*, ...) @f_print(i32 %211, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %205
  br label %214

214:                                              ; preds = %213, %194
  %215 = load i32, i32* @fout, align 4
  %216 = load i32, i32* @RQSTP, align 4
  %217 = call i32 (i32, i8*, ...) @f_print(i32 %215, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %216)
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %219, align 8
  %221 = call i32 @nullproc(%struct.TYPE_17__* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %232, label %223

223:                                              ; preds = %214
  %224 = load i32, i32* @fout, align 4
  %225 = call i32 (i32, i8*, ...) @f_print(i32 %224, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0))
  %226 = load i32, i32* @fout, align 4
  %227 = load i32, i32* @TRANSP, align 4
  %228 = call i32 (i32, i8*, ...) @f_print(i32 %226, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i64 0, i64 0), i32 %227)
  %229 = call i32 @print_return(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %230 = load i32, i32* @fout, align 4
  %231 = call i32 (i32, i8*, ...) @f_print(i32 %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %232

232:                                              ; preds = %223, %214
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %234, align 8
  store %struct.TYPE_17__* %235, %struct.TYPE_17__** %6, align 8
  br label %236

236:                                              ; preds = %312, %232
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %238 = icmp ne %struct.TYPE_17__* %237, null
  br i1 %238, label %239, label %316

239:                                              ; preds = %236
  %240 = load i32, i32* @fout, align 4
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i32, i8*, ...) @f_print(i32 %240, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i32 %243)
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %247, 2
  br i1 %248, label %249, label %259

249:                                              ; preds = %239
  %250 = load i32, i32* @ARG, align 4
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @p_xdrfunc(i32 %250, i32 %257)
  br label %266

259:                                              ; preds = %239
  %260 = load i32, i32* @ARG, align 4
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @p_xdrfunc(i32 %260, i32 %264)
  br label %266

266:                                              ; preds = %259, %249
  %267 = load i32, i32* @RESULT, align 4
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @p_xdrfunc(i32 %267, i32 %270)
  %272 = load i64, i64* @mtflag, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %266
  %275 = load i32, i32* @fout, align 4
  %276 = load i32, i32* @ROUTINE, align 4
  %277 = call i32 (i32, i8*, ...) @f_print(i32 %275, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0), i32 %276)
  br label %282

278:                                              ; preds = %266
  %279 = load i32, i32* @fout, align 4
  %280 = load i32, i32* @ROUTINE, align 4
  %281 = call i32 (i32, i8*, ...) @f_print(i32 %279, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.28, i64 0, i64 0), i32 %280)
  br label %282

282:                                              ; preds = %278, %274
  %283 = load i64, i64* @newstyle, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i32, i32* @fout, align 4
  %287 = call i32 (i32, i8*, ...) @f_print(i32 %286, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  br label %288

288:                                              ; preds = %285, %282
  %289 = load i64, i64* @newstyle, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %299, label %291

291:                                              ; preds = %288
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @pvname_svc(i32 %294, i32 %297)
  br label %307

299:                                              ; preds = %288
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @pvname(i32 %302, i32 %305)
  br label %307

307:                                              ; preds = %299, %291
  %308 = load i32, i32* @fout, align 4
  %309 = call i32 (i32, i8*, ...) @f_print(i32 %308, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0))
  %310 = load i32, i32* @fout, align 4
  %311 = call i32 (i32, i8*, ...) @f_print(i32 %310, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0))
  br label %312

312:                                              ; preds = %307
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 4
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %314, align 8
  store %struct.TYPE_17__* %315, %struct.TYPE_17__** %6, align 8
  br label %236

316:                                              ; preds = %236
  %317 = load i32, i32* @fout, align 4
  %318 = call i32 (i32, i8*, ...) @f_print(i32 %317, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  %319 = load i32, i32* @TRANSP, align 4
  %320 = call i32 @printerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0), i32 %319)
  %321 = call i32 @print_return(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %322 = load i32, i32* @fout, align 4
  %323 = call i32 (i32, i8*, ...) @f_print(i32 %322, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %324 = load i32, i32* @fout, align 4
  %325 = load i32, i32* @ARG, align 4
  %326 = load i32, i32* @ARG, align 4
  %327 = call i32 (i32, i8*, ...) @f_print(i32 %324, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.35, i64 0, i64 0), i32 %325, i32 %326)
  %328 = load i32, i32* @TRANSP, align 4
  %329 = load i32, i32* @ARG, align 4
  %330 = call i32 @printif(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i64 0, i64 0), i32 %328, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* @TRANSP, align 4
  %332 = call i32 @printerr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 %331)
  %333 = call i32 @print_return(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %334 = load i32, i32* @fout, align 4
  %335 = call i32 (i32, i8*, ...) @f_print(i32 %334, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %336 = load i64, i64* @mtflag, align 8
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %345, label %338

338:                                              ; preds = %316
  %339 = load i32, i32* @fout, align 4
  %340 = load i32, i32* @RESULT, align 4
  %341 = load i32, i32* @ROUTINE, align 4
  %342 = load i32, i32* @ARG, align 4
  %343 = load i32, i32* @RQSTP, align 4
  %344 = call i32 (i32, i8*, ...) @f_print(i32 %339, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 %340, i32 %341, i32 %342, i32 %343)
  br label %353

345:                                              ; preds = %316
  %346 = load i32, i32* @fout, align 4
  %347 = load i32, i32* @RETVAL, align 4
  %348 = load i32, i32* @ROUTINE, align 4
  %349 = load i32, i32* @ARG, align 4
  %350 = load i32, i32* @RESULT, align 4
  %351 = load i32, i32* @RQSTP, align 4
  %352 = call i32 (i32, i8*, ...) @f_print(i32 %346, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.40, i64 0, i64 0), i32 %347, i32 %348, i32 %349, i32 %350, i32 %351)
  br label %353

353:                                              ; preds = %345, %338
  %354 = load i64, i64* @mtflag, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %363

356:                                              ; preds = %353
  %357 = load i32, i32* @fout, align 4
  %358 = load i32, i32* @RETVAL, align 4
  %359 = load i32, i32* @TRANSP, align 4
  %360 = load i32, i32* @RESULT, align 4
  %361 = load i32, i32* @RESULT, align 4
  %362 = call i32 (i32, i8*, ...) @f_print(i32 %357, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i64 0, i64 0), i32 %358, i32 %359, i32 %360, i32 %361)
  br label %370

363:                                              ; preds = %353
  %364 = load i32, i32* @fout, align 4
  %365 = load i32, i32* @RESULT, align 4
  %366 = load i32, i32* @TRANSP, align 4
  %367 = load i32, i32* @RESULT, align 4
  %368 = load i32, i32* @RESULT, align 4
  %369 = call i32 (i32, i8*, ...) @f_print(i32 %364, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.42, i64 0, i64 0), i32 %365, i32 %366, i32 %367, i32 %368)
  br label %370

370:                                              ; preds = %363, %356
  %371 = load i32, i32* @TRANSP, align 4
  %372 = call i32 @printerr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0), i32 %371)
  %373 = load i32, i32* @fout, align 4
  %374 = call i32 (i32, i8*, ...) @f_print(i32 %373, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %375 = load i32, i32* @TRANSP, align 4
  %376 = load i32, i32* @ARG, align 4
  %377 = call i32 @printif(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i32 %375, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 %376)
  %378 = load i32, i32* @_errbuf, align 4
  %379 = call i32 @sprintf(i32 %378, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0))
  %380 = call i32 @print_err_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %381 = load i32, i32* @fout, align 4
  %382 = call i32 (i32, i8*, ...) @f_print(i32 %381, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0))
  %383 = load i32, i32* @fout, align 4
  %384 = call i32 (i32, i8*, ...) @f_print(i32 %383, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %385 = load i64, i64* @mtflag, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %407

387:                                              ; preds = %370
  %388 = load i32, i32* @fout, align 4
  %389 = call i32 (i32, i8*, ...) @f_print(i32 %388, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i64 0, i64 0))
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @pvname(i32 %392, i32 %395)
  %397 = load i32, i32* @fout, align 4
  %398 = load i32, i32* @TRANSP, align 4
  %399 = load i32, i32* @RESULT, align 4
  %400 = load i32, i32* @RESULT, align 4
  %401 = call i32 (i32, i8*, ...) @f_print(i32 %397, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i64 0, i64 0), i32 %398, i32 %399, i32 %400)
  %402 = load i32, i32* @_errbuf, align 4
  %403 = call i32 @sprintf(i32 %402, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0))
  %404 = call i32 @print_err_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %405 = load i32, i32* @fout, align 4
  %406 = call i32 (i32, i8*, ...) @f_print(i32 %405, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %407

407:                                              ; preds = %387, %370
  %408 = call i32 @print_return(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0))
  %409 = load i32, i32* @fout, align 4
  %410 = call i32 (i32, i8*, ...) @f_print(i32 %409, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0))
  br label %411

411:                                              ; preds = %407
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 2
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %413, align 8
  store %struct.TYPE_16__* %414, %struct.TYPE_16__** %5, align 8
  br label %13

415:                                              ; preds = %13
  ret void
}

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @pvname(i32, i32) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @ptype(i32, i32, i32) #1

declare dso_local i32 @nullproc(%struct.TYPE_17__*) #1

declare dso_local i32 @print_return(i8*) #1

declare dso_local i32 @p_xdrfunc(i32, i32) #1

declare dso_local i32 @pvname_svc(i32, i32) #1

declare dso_local i32 @printerr(i8*, i32) #1

declare dso_local i32 @printif(i8*, i32, i8*, i32) #1

declare dso_local i32 @sprintf(i32, i8*) #1

declare dso_local i32 @print_err_message(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
