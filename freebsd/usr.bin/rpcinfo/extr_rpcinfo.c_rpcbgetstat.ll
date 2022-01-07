; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_rpcbgetstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_rpcbgetstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"SET\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"UNSET\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"GETPORT\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DUMP\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"CALLIT\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"GETADDR\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"U2T\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"T2U\00", align 1
@__const.rpcbgetstat.rpcb3hdr = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)], align 16
@.str.10 = private unnamed_addr constant [8 x i8] c"VERADDR\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"INDRECT\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"GETLIST\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"GETSTAT\00", align 1
@__const.rpcbgetstat.rpcb4hdr = private unnamed_addr constant [13 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)], align 16
@RPCBVERS4 = common dso_local global i32 0, align 4
@PMAPPROG = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [31 x i8] c"rpcinfo: can't contact rpcbind\00", align 1
@RPCBPROC_GETSTAT = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_rpcb_stat_byvers = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [33 x i8] c"rpcinfo: can't contact rpcbind: \00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"PORTMAP (version 2) statistics\0A\00", align 1
@rpcb_highproc_2 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c"%d/\00", align 1
@RPCBVERS_2_STAT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"\0A%s\0A\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"PMAP_RMTCALL call statistics\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"PMAP_GETPORT call statistics\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"RPCBIND (version 3) statistics\0A\00", align 1
@rpcb_highproc_3 = common dso_local global i32 0, align 4
@RPCBVERS_3_STAT = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [42 x i8] c"RPCB_RMTCALL (version 3) call statistics\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"RPCB_GETADDR (version 3) call statistics\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"RPCBIND (version 4) statistics\0A\00", align 1
@rpcb_highproc_4 = common dso_local global i32 0, align 4
@RPCBVERS_4_STAT = common dso_local global i64 0, align 8
@RPCBPROC_GETADDRLIST = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@RPCBPROC_INDIRECT = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [42 x i8] c"RPCB_RMTCALL (version 4) call statistics\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"RPCB_GETADDR (version 4) call statistics\0A\00", align 1
@MAXFIELD = common dso_local global i32 0, align 4
@MAXLINE = common dso_local global i32 0, align 4
@TABSTOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @rpcbgetstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpcbgetstat(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i8], align 16
  %16 = alloca [256 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [6 x i8*], align 16
  %20 = alloca [9 x i8*], align 16
  %21 = alloca [13 x i8*], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %22 = bitcast [6 x i8*]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 48, i1 false)
  %23 = bitcast i8* %22 to [6 x i8*]*
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %24, align 16
  %25 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %26, align 16
  %27 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8** %27, align 8
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %28, align 16
  %29 = getelementptr inbounds [6 x i8*], [6 x i8*]* %23, i32 0, i32 5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8** %29, align 8
  %30 = bitcast [9 x i8*]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %30, i8* align 16 bitcast ([9 x i8*]* @__const.rpcbgetstat.rpcb3hdr to i8*), i64 72, i1 false)
  %31 = bitcast [13 x i8*]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %31, i8* align 16 bitcast ([13 x i8*]* @__const.rpcbgetstat.rpcb4hdr to i8*), i64 104, i1 false)
  %32 = load i32, i32* %3, align 4
  %33 = icmp sge i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* @RPCBVERS4, align 4
  %40 = call i32* @clnt_rpcbind_create(i8* %38, i32 %39, i32* null)
  store i32* %40, i32** %7, align 8
  br label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @PMAPPROG, align 4
  %43 = load i32, i32* @RPCBVERS4, align 4
  %44 = call i32* @local_rpcb(i32 %42, i32 %43)
  store i32* %44, i32** %7, align 8
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32*, i32** %7, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 @clnt_pcreateerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %50 = call i32 @exit(i32 1) #4
  unreachable

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 60, i32* %52, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = bitcast %struct.TYPE_8__** %5 to i8*
  %55 = call i32 @memset(i8* %54, i32 0, i32 8)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @RPCBPROC_GETSTAT, align 4
  %58 = load i64, i64* @xdr_void, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* @xdr_rpcb_stat_byvers, align 8
  %61 = trunc i64 %60 to i32
  %62 = bitcast %struct.TYPE_8__** %5 to i8*
  %63 = call i64 @CLNT_CALL(i32* %56, i32 %57, i32 %59, i32* null, i32 %61, i8* %62, %struct.timeval* byval(%struct.timeval) align 8 %6)
  %64 = load i64, i64* @RPC_SUCCESS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %51
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @clnt_perror(i32* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %69 = call i32 @exit(i32 1) #4
  unreachable

70:                                               ; preds = %51
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  store i8* %72, i8** %18, align 8
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %194, %70
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @rpcb_highproc_2, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %197

77:                                               ; preds = %73
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %78, align 16
  %79 = load i32, i32* %9, align 4
  switch i32 %79, label %142 [
    i32 133, label %80
    i32 132, label %88
    i32 134, label %96
    i32 135, label %119
  ]

80:                                               ; preds = %77
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i8*, i8*, ...) @sprintf(i8* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %86)
  br label %143

88:                                               ; preds = %77
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i8*, ...) @sprintf(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %94)
  br label %143

96:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %11, align 8
  br label %102

102:                                              ; preds = %111, %96
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %104 = icmp ne %struct.TYPE_7__* %103, null
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %11, align 8
  br label %102

115:                                              ; preds = %102
  %116 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %117 = load i32, i32* %13, align 4
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %117)
  br label %143

119:                                              ; preds = %77
  store i32 0, i32* %13, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  store %struct.TYPE_6__* %124, %struct.TYPE_6__** %12, align 8
  br label %125

125:                                              ; preds = %134, %119
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %127 = icmp ne %struct.TYPE_6__* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %128
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  store %struct.TYPE_6__* %137, %struct.TYPE_6__** %12, align 8
  br label %125

138:                                              ; preds = %125
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %140 = load i32, i32* %13, align 4
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %140)
  br label %143

142:                                              ; preds = %77
  br label %143

143:                                              ; preds = %142, %138, %115, %88, %80
  %144 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %146 = call i32 @strlen(i8* %145)
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  store i8* %148, i8** %17, align 8
  %149 = load i8*, i8** %17, align 8
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, i8*, ...) @sprintf(i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %158)
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %161 = call i32 @strlen(i8* %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %14, align 4
  %167 = sdiv i32 %166, 8
  %168 = add nsw i32 1, %167
  %169 = mul nsw i32 8, %168
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [6 x i8*], [6 x i8*]* %19, i64 0, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @strlen(i8* %173)
  %175 = sub nsw i32 %169, %174
  %176 = call i32 @spaces(i32 %175)
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %165, i32 %176)
  %178 = load i8*, i8** %18, align 8
  %179 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %180 = load i32, i32* %14, align 4
  %181 = sdiv i32 %180, 8
  %182 = add nsw i32 1, %181
  %183 = mul nsw i32 8, %182
  %184 = load i32, i32* %14, align 4
  %185 = sub nsw i32 %183, %184
  store i32 %185, i32* %13, align 4
  %186 = call i32 @spaces(i32 %185)
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %179, i32 %186)
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %13, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i8*, i8** %18, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %18, align 8
  br label %194

194:                                              ; preds = %143
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %73

197:                                              ; preds = %73
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %198)
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 135
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %197
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %210 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %212 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i64 %212
  %214 = call i32 @print_rmtcallstat(i64 %210, %struct.TYPE_8__* %213)
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %216

216:                                              ; preds = %208, %197
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %218 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 134
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %216
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  %227 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %229 = load i64, i64* @RPCBVERS_2_STAT, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 %229
  %231 = call i32 @print_getaddrstat(i64 %227, %struct.TYPE_8__* %230)
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %233

233:                                              ; preds = %225, %216
  %234 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i64 0, i64 0))
  %235 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  store i8* %235, i8** %18, align 8
  store i32 0, i32* %9, align 4
  br label %236

236:                                              ; preds = %357, %233
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @rpcb_highproc_3, align 4
  %239 = icmp sle i32 %237, %238
  br i1 %239, label %240, label %360

240:                                              ; preds = %236
  %241 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %241, align 16
  %242 = load i32, i32* %9, align 4
  switch i32 %242, label %305 [
    i32 129, label %243
    i32 128, label %251
    i32 130, label %259
    i32 131, label %282
  ]

243:                                              ; preds = %240
  %244 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %246 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i8*, i8*, ...) @sprintf(i8* %244, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %249)
  br label %306

251:                                              ; preds = %240
  %252 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %254 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i8*, i8*, ...) @sprintf(i8* %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %257)
  br label %306

259:                                              ; preds = %240
  store i32 0, i32* %13, align 4
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %261 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  store %struct.TYPE_7__* %264, %struct.TYPE_7__** %11, align 8
  br label %265

265:                                              ; preds = %274, %259
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %267 = icmp ne %struct.TYPE_7__* %266, null
  br i1 %267, label %268, label %278

268:                                              ; preds = %265
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = add nsw i32 %272, %271
  store i32 %273, i32* %13, align 4
  br label %274

274:                                              ; preds = %268
  %275 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %276, align 8
  store %struct.TYPE_7__* %277, %struct.TYPE_7__** %11, align 8
  br label %265

278:                                              ; preds = %265
  %279 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %280 = load i32, i32* %13, align 4
  %281 = call i32 (i8*, i8*, ...) @sprintf(i8* %279, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %280)
  br label %306

282:                                              ; preds = %240
  store i32 0, i32* %13, align 4
  %283 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %284 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  store %struct.TYPE_6__* %287, %struct.TYPE_6__** %12, align 8
  br label %288

288:                                              ; preds = %297, %282
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %290 = icmp ne %struct.TYPE_6__* %289, null
  br i1 %290, label %291, label %301

291:                                              ; preds = %288
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* %13, align 4
  %296 = add nsw i32 %295, %294
  store i32 %296, i32* %13, align 4
  br label %297

297:                                              ; preds = %291
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %299, align 8
  store %struct.TYPE_6__* %300, %struct.TYPE_6__** %12, align 8
  br label %288

301:                                              ; preds = %288
  %302 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %303 = load i32, i32* %13, align 4
  %304 = call i32 (i8*, i8*, ...) @sprintf(i8* %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %303)
  br label %306

305:                                              ; preds = %240
  br label %306

306:                                              ; preds = %305, %301, %278, %251, %243
  %307 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %308 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %309 = call i32 @strlen(i8* %308)
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %307, i64 %310
  store i8* %311, i8** %17, align 8
  %312 = load i8*, i8** %17, align 8
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %314 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = call i32 (i8*, i8*, ...) @sprintf(i8* %312, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %321)
  %323 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %324 = call i32 @strlen(i8* %323)
  store i32 %324, i32* %14, align 4
  %325 = load i32, i32* %9, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [9 x i8*], [9 x i8*]* %20, i64 0, i64 %326
  %328 = load i8*, i8** %327, align 8
  %329 = load i32, i32* %14, align 4
  %330 = sdiv i32 %329, 8
  %331 = add nsw i32 1, %330
  %332 = mul nsw i32 8, %331
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [9 x i8*], [9 x i8*]* %20, i64 0, i64 %334
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @strlen(i8* %336)
  %338 = sub nsw i32 %332, %337
  %339 = call i32 @spaces(i32 %338)
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %328, i32 %339)
  %341 = load i8*, i8** %18, align 8
  %342 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %343 = load i32, i32* %14, align 4
  %344 = sdiv i32 %343, 8
  %345 = add nsw i32 1, %344
  %346 = mul nsw i32 8, %345
  %347 = load i32, i32* %14, align 4
  %348 = sub nsw i32 %346, %347
  store i32 %348, i32* %13, align 4
  %349 = call i32 @spaces(i32 %348)
  %350 = call i32 (i8*, i8*, ...) @sprintf(i8* %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %342, i32 %349)
  %351 = load i32, i32* %14, align 4
  %352 = load i32, i32* %13, align 4
  %353 = add nsw i32 %351, %352
  %354 = load i8*, i8** %18, align 8
  %355 = sext i32 %353 to i64
  %356 = getelementptr inbounds i8, i8* %354, i64 %355
  store i8* %356, i8** %18, align 8
  br label %357

357:                                              ; preds = %306
  %358 = load i32, i32* %9, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %9, align 4
  br label %236

360:                                              ; preds = %236
  %361 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %361)
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %364 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 2
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 131
  %369 = load i32, i32* %368, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %379

371:                                              ; preds = %360
  %372 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0))
  %373 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %375 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i64 %375
  %377 = call i32 @print_rmtcallstat(i64 %373, %struct.TYPE_8__* %376)
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %379

379:                                              ; preds = %371, %360
  %380 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %381 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 2
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 130
  %386 = load i32, i32* %385, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %396

388:                                              ; preds = %379
  %389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0))
  %390 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %392 = load i64, i64* @RPCBVERS_3_STAT, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i64 %392
  %394 = call i32 @print_getaddrstat(i64 %390, %struct.TYPE_8__* %393)
  %395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  br label %396

396:                                              ; preds = %388, %379
  %397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %398

398:                                              ; preds = %560, %396
  %399 = load i32, i32* %10, align 4
  %400 = icmp sle i32 %399, 9
  br i1 %400, label %401, label %563

401:                                              ; preds = %398
  %402 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  store i8* %402, i8** %18, align 8
  %403 = load i32, i32* %10, align 4
  store i32 %403, i32* %9, align 4
  br label %404

404:                                              ; preds = %554, %401
  %405 = load i32, i32* %9, align 4
  %406 = load i32, i32* @rpcb_highproc_4, align 4
  %407 = sub nsw i32 %406, 9
  %408 = load i32, i32* %10, align 4
  %409 = add nsw i32 %407, %408
  %410 = call i32 @MAX(i32 8, i32 %409)
  %411 = icmp sle i32 %405, %410
  br i1 %411, label %412, label %557

412:                                              ; preds = %404
  %413 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %413, align 16
  %414 = load i32, i32* %9, align 4
  switch i32 %414, label %477 [
    i32 129, label %415
    i32 128, label %423
    i32 130, label %431
    i32 131, label %454
  ]

415:                                              ; preds = %412
  %416 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %418 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i32 (i8*, i8*, ...) @sprintf(i8* %416, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %421)
  br label %478

423:                                              ; preds = %412
  %424 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %426 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %425, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = call i32 (i8*, i8*, ...) @sprintf(i8* %424, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %429)
  br label %478

431:                                              ; preds = %412
  store i32 0, i32* %13, align 4
  %432 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %433 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 4
  %436 = load %struct.TYPE_7__*, %struct.TYPE_7__** %435, align 8
  store %struct.TYPE_7__* %436, %struct.TYPE_7__** %11, align 8
  br label %437

437:                                              ; preds = %446, %431
  %438 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %439 = icmp ne %struct.TYPE_7__* %438, null
  br i1 %439, label %440, label %450

440:                                              ; preds = %437
  %441 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* %13, align 4
  %445 = add nsw i32 %444, %443
  store i32 %445, i32* %13, align 4
  br label %446

446:                                              ; preds = %440
  %447 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 1
  %449 = load %struct.TYPE_7__*, %struct.TYPE_7__** %448, align 8
  store %struct.TYPE_7__* %449, %struct.TYPE_7__** %11, align 8
  br label %437

450:                                              ; preds = %437
  %451 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %452 = load i32, i32* %13, align 4
  %453 = call i32 (i8*, i8*, ...) @sprintf(i8* %451, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %452)
  br label %478

454:                                              ; preds = %412
  store i32 0, i32* %13, align 4
  %455 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %456 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i64 %456
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 3
  %459 = load %struct.TYPE_6__*, %struct.TYPE_6__** %458, align 8
  store %struct.TYPE_6__* %459, %struct.TYPE_6__** %12, align 8
  br label %460

460:                                              ; preds = %469, %454
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %462 = icmp ne %struct.TYPE_6__* %461, null
  br i1 %462, label %463, label %473

463:                                              ; preds = %460
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = load i32, i32* %13, align 4
  %468 = add nsw i32 %467, %466
  store i32 %468, i32* %13, align 4
  br label %469

469:                                              ; preds = %463
  %470 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 1
  %472 = load %struct.TYPE_6__*, %struct.TYPE_6__** %471, align 8
  store %struct.TYPE_6__* %472, %struct.TYPE_6__** %12, align 8
  br label %460

473:                                              ; preds = %460
  %474 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %475 = load i32, i32* %13, align 4
  %476 = call i32 (i8*, i8*, ...) @sprintf(i8* %474, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %475)
  br label %478

477:                                              ; preds = %412
  br label %478

478:                                              ; preds = %477, %473, %450, %423, %415
  %479 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %480 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %481 = call i32 @strlen(i8* %480)
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8, i8* %479, i64 %482
  store i8* %483, i8** %17, align 8
  %484 = load i32, i32* %9, align 4
  %485 = icmp ne i32 %484, 130
  br i1 %485, label %486, label %498

486:                                              ; preds = %478
  %487 = load i8*, i8** %17, align 8
  %488 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %489 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %490 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i64 %489
  %491 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %490, i32 0, i32 2
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %9, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = call i32 (i8*, i8*, ...) @sprintf(i8* %487, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %496)
  br label %519

498:                                              ; preds = %478
  %499 = load i8*, i8** %17, align 8
  %500 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %501 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %500, i64 %501
  %503 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %502, i32 0, i32 2
  %504 = load i32*, i32** %503, align 8
  %505 = load i32, i32* %9, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %510 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 2
  %513 = load i32*, i32** %512, align 8
  %514 = load i64, i64* @RPCBPROC_GETADDRLIST, align 8
  %515 = getelementptr inbounds i32, i32* %513, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = add nsw i32 %508, %516
  %518 = call i32 (i8*, i8*, ...) @sprintf(i8* %499, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %517)
  br label %519

519:                                              ; preds = %498, %486
  %520 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %521 = call i32 @strlen(i8* %520)
  store i32 %521, i32* %14, align 4
  %522 = load i32, i32* %9, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [13 x i8*], [13 x i8*]* %21, i64 0, i64 %523
  %525 = load i8*, i8** %524, align 8
  %526 = load i32, i32* %14, align 4
  %527 = sdiv i32 %526, 8
  %528 = add nsw i32 1, %527
  %529 = mul nsw i32 8, %528
  %530 = load i32, i32* %9, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [13 x i8*], [13 x i8*]* %21, i64 0, i64 %531
  %533 = load i8*, i8** %532, align 8
  %534 = call i32 @strlen(i8* %533)
  %535 = sub nsw i32 %529, %534
  %536 = call i32 @spaces(i32 %535)
  %537 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %525, i32 %536)
  %538 = load i8*, i8** %18, align 8
  %539 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %540 = load i32, i32* %14, align 4
  %541 = sdiv i32 %540, 8
  %542 = add nsw i32 1, %541
  %543 = mul nsw i32 8, %542
  %544 = load i32, i32* %14, align 4
  %545 = sub nsw i32 %543, %544
  store i32 %545, i32* %13, align 4
  %546 = call i32 @spaces(i32 %545)
  %547 = call i32 (i8*, i8*, ...) @sprintf(i8* %538, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %539, i32 %546)
  %548 = load i32, i32* %14, align 4
  %549 = load i32, i32* %13, align 4
  %550 = add nsw i32 %548, %549
  %551 = load i8*, i8** %18, align 8
  %552 = sext i32 %550 to i64
  %553 = getelementptr inbounds i8, i8* %551, i64 %552
  store i8* %553, i8** %18, align 8
  br label %554

554:                                              ; preds = %519
  %555 = load i32, i32* %9, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %9, align 4
  br label %404

557:                                              ; preds = %404
  %558 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %559 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i8* %558)
  br label %560

560:                                              ; preds = %557
  %561 = load i32, i32* %10, align 4
  %562 = add nsw i32 %561, 9
  store i32 %562, i32* %10, align 4
  br label %398

563:                                              ; preds = %398
  %564 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %565 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %566 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %564, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %566, i32 0, i32 2
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 131
  %570 = load i32, i32* %569, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %582, label %572

572:                                              ; preds = %563
  %573 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %574 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %575 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %573, i64 %574
  %576 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %575, i32 0, i32 2
  %577 = load i32*, i32** %576, align 8
  %578 = load i64, i64* @RPCBPROC_INDIRECT, align 8
  %579 = getelementptr inbounds i32, i32* %577, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %590

582:                                              ; preds = %572, %563
  %583 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %584 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0))
  %585 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %586 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %587 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %588 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %586, i64 %587
  %589 = call i32 @print_rmtcallstat(i64 %585, %struct.TYPE_8__* %588)
  br label %590

590:                                              ; preds = %582, %572
  %591 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %592 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %593 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %591, i64 %592
  %594 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %593, i32 0, i32 2
  %595 = load i32*, i32** %594, align 8
  %596 = getelementptr inbounds i32, i32* %595, i64 130
  %597 = load i32, i32* %596, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %607

599:                                              ; preds = %590
  %600 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %601 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0))
  %602 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %603 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %604 = load i64, i64* @RPCBVERS_4_STAT, align 8
  %605 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %603, i64 %604
  %606 = call i32 @print_getaddrstat(i64 %602, %struct.TYPE_8__* %605)
  br label %607

607:                                              ; preds = %599, %590
  %608 = load i32*, i32** %7, align 8
  %609 = call i32 @clnt_destroy(i32* %608)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @clnt_rpcbind_create(i8*, i32, i32*) #2

declare dso_local i32* @local_rpcb(i32, i32) #2

declare dso_local i32 @clnt_pcreateerror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @CLNT_CALL(i32*, i32, i32, i32*, i32, i8*, %struct.timeval* byval(%struct.timeval) align 8) #2

declare dso_local i32 @clnt_perror(i32*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @spaces(i32) #2

declare dso_local i32 @print_rmtcallstat(i64, %struct.TYPE_8__*) #2

declare dso_local i32 @print_getaddrstat(i64, %struct.TYPE_8__*) #2

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i32 @clnt_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
