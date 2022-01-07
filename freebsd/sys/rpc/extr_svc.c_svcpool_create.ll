; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svcpool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_svc.c_svcpool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.sysctl_oid_list = type { i32 }

@M_RPC = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sp_lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SVCPOOL_INIT = common dso_local global i32 0, align 4
@SVC_MAXGROUPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"sg_lock\00", align 1
@SVCPOOL_ACTIVE = common dso_local global i32 0, align 4
@nmbclusters = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"minthreads\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@svcpool_minthread_sysctl = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Minimal number of threads\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"maxthreads\00", align 1
@svcpool_maxthread_sysctl = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Maximal number of threads\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@svcpool_threads_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Current number of threads\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Number of thread groups\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"request_space_used\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Space in parsed but not handled requests.\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"request_space_used_highest\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Highest space used since reboot.\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"request_space_high\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"Maximum space in parsed but not handled requests.\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"request_space_low\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Low water mark for request space.\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"request_space_throttled\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Whether nfs requests are currently throttled\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"request_space_throttle_count\00", align 1
@.str.22 = private unnamed_addr constant [62 x i8] c"Count of times throttling based on request space has occurred\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @svcpool_create(i8* %0, %struct.sysctl_oid_list* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.sysctl_oid_list* %1, %struct.sysctl_oid_list** %4, align 8
  %8 = load i32, i32* @M_RPC, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = load i32, i32* @M_ZERO, align 4
  %11 = or i32 %9, %10
  %12 = call %struct.TYPE_6__* @malloc(i32 80, i32 %8, i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 16
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %15)
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* @SVCPOOL_INIT, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 15
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 14
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 13
  %27 = call i32 @TAILQ_INIT(i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 12
  %30 = call i32 @TAILQ_INIT(i32* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 1, i32* %34, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  store i32 1, i32* %36, align 8
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %71, %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SVC_MAXGROUPS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 11
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 7
  %50 = load i32, i32* @MTX_DEF, align 4
  %51 = call i32 @mtx_init(i32* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 6
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %54, align 8
  %55 = load i32, i32* @SVCPOOL_ACTIVE, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 4
  %60 = call i32 @TAILQ_INIT(i32* %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  %63 = call i32 @TAILQ_INIT(i32* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = call i32 @LIST_INIT(i32* %65)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %41
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %37

74:                                               ; preds = %37
  %75 = load i64, i64* @nmbclusters, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @MCLBYTES, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sdiv i32 %78, 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 3
  %86 = mul nsw i32 %85, 2
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 10
  %91 = call i32 @sysctl_ctx_init(i32* %90)
  %92 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %93 = icmp ne %struct.sysctl_oid_list* %92, null
  br i1 %93, label %94, label %181

94:                                               ; preds = %74
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 10
  %97 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %98 = load i32, i32* @OID_AUTO, align 4
  %99 = load i32, i32* @CTLTYPE_INT, align 4
  %100 = load i32, i32* @CTLFLAG_RW, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = load i32, i32* @svcpool_minthread_sysctl, align 4
  %104 = call i32 @SYSCTL_ADD_PROC(i32* %96, %struct.sysctl_oid_list* %97, i32 %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %101, %struct.TYPE_6__* %102, i32 0, i32 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 10
  %107 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %108 = load i32, i32* @OID_AUTO, align 4
  %109 = load i32, i32* @CTLTYPE_INT, align 4
  %110 = load i32, i32* @CTLFLAG_RW, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %113 = load i32, i32* @svcpool_maxthread_sysctl, align 4
  %114 = call i32 @SYSCTL_ADD_PROC(i32* %106, %struct.sysctl_oid_list* %107, i32 %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %111, %struct.TYPE_6__* %112, i32 0, i32 %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 10
  %117 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %118 = load i32, i32* @OID_AUTO, align 4
  %119 = load i32, i32* @CTLTYPE_INT, align 4
  %120 = load i32, i32* @CTLFLAG_RD, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %123 = load i32, i32* @svcpool_threads_sysctl, align 4
  %124 = call i32 @SYSCTL_ADD_PROC(i32* %116, %struct.sysctl_oid_list* %117, i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %121, %struct.TYPE_6__* %122, i32 0, i32 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 10
  %127 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %128 = load i32, i32* @OID_AUTO, align 4
  %129 = load i32, i32* @CTLFLAG_RD, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  %132 = call i32 @SYSCTL_ADD_INT(i32* %126, %struct.sysctl_oid_list* %127, i32 %128, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %129, i32* %131, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 10
  %135 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %136 = load i32, i32* @OID_AUTO, align 4
  %137 = load i32, i32* @CTLFLAG_RD, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 6
  %140 = call i32 @SYSCTL_ADD_ULONG(i32* %134, %struct.sysctl_oid_list* %135, i32 %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %137, i32* %139, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 10
  %143 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %144 = load i32, i32* @OID_AUTO, align 4
  %145 = load i32, i32* @CTLFLAG_RD, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 7
  %148 = call i32 @SYSCTL_ADD_ULONG(i32* %142, %struct.sysctl_oid_list* %143, i32 %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %145, i32* %147, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 10
  %151 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %152 = load i32, i32* @OID_AUTO, align 4
  %153 = load i32, i32* @CTLFLAG_RW, align 4
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  %156 = call i32 @SYSCTL_ADD_ULONG(i32* %150, %struct.sysctl_oid_list* %151, i32 %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %153, i32* %155, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0))
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 10
  %159 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %160 = load i32, i32* @OID_AUTO, align 4
  %161 = load i32, i32* @CTLFLAG_RW, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 5
  %164 = call i32 @SYSCTL_ADD_ULONG(i32* %158, %struct.sysctl_oid_list* %159, i32 %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %161, i32* %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 10
  %167 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %168 = load i32, i32* @OID_AUTO, align 4
  %169 = load i32, i32* @CTLFLAG_RD, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 8
  %172 = call i32 @SYSCTL_ADD_INT(i32* %166, %struct.sysctl_oid_list* %167, i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i32 %169, i32* %171, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0))
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 10
  %175 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %176 = load i32, i32* @OID_AUTO, align 4
  %177 = load i32, i32* @CTLFLAG_RD, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 9
  %180 = call i32 @SYSCTL_ADD_INT(i32* %174, %struct.sysctl_oid_list* %175, i32 %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i32 %177, i32* %179, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.22, i64 0, i64 0))
  br label %181

181:                                              ; preds = %94, %74
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %182
}

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.TYPE_6__*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_ULONG(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
