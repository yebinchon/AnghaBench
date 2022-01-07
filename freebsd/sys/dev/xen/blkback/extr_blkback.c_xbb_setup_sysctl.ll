; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_setup_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_setup_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"disable_flush\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"fake the flush command\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"flush_interval\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"send a real flush for N flush requests\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"no_coalesce_reqs\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Don't coalesce contiguous requests\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"reqs_received\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"how many I/O requests we have received\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"reqs_completed\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"how many I/O requests have been completed\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"reqs_queued_for_completion\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"how many I/O requests queued but not yet pushed\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"reqs_completed_with_error\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"how many I/O requests completed with error status\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"forced_dispatch\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"how many I/O dispatches were forced\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"normal_dispatch\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"how many I/O dispatches were normal\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"total_dispatch\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"total number of I/O dispatches\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"kva_shortages\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"how many times we have run out of KVA\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"request_shortages\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"how many times we have run out of requests\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"max_requests\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [42 x i8] c"maximum outstanding requests (negotiated)\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"max_request_segments\00", align 1
@.str.27 = private unnamed_addr constant [50 x i8] c"maximum number of pages per requests (negotiated)\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"max_request_size\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"maximum size in bytes of a request (negotiated)\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"ring_pages\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"communication channel pages (negotiated)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_softc*)* @xbb_setup_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_setup_sysctl(%struct.xbb_softc* %0) #0 {
  %2 = alloca %struct.xbb_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.xbb_softc* %0, %struct.xbb_softc** %2, align 8
  store %struct.sysctl_ctx_list* null, %struct.sysctl_ctx_list** %3, align 8
  store %struct.sysctl_oid* null, %struct.sysctl_oid** %4, align 8
  %5 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %6 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %5, i32 0, i32 16
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %3, align 8
  %9 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %10 = icmp eq %struct.sysctl_ctx_list* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %150

12:                                               ; preds = %1
  %13 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %14 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %13, i32 0, i32 16
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %15)
  store %struct.sysctl_oid* %16, %struct.sysctl_oid** %4, align 8
  %17 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %18 = icmp eq %struct.sysctl_oid* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %150

20:                                               ; preds = %12
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %22 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %23 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %22)
  %24 = load i32, i32* @OID_AUTO, align 4
  %25 = load i32, i32* @CTLFLAG_RW, align 4
  %26 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %27 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %26, i32 0, i32 15
  %28 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %21, i32 %23, i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %25, i32* %27, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %30 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %31 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %30)
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLFLAG_RW, align 4
  %34 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %35 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %34, i32 0, i32 14
  %36 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %29, i32 %31, i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32* %35, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %38 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %39 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %38)
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RW, align 4
  %42 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %43 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %42, i32 0, i32 13
  %44 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %37, i32 %39, i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %41, i32* %43, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %46 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %47 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %46)
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLFLAG_RW, align 4
  %50 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %51 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %50, i32 0, i32 12
  %52 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %45, i32 %47, i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %49, i32* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %54 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %55 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %54)
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RW, align 4
  %58 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %59 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %58, i32 0, i32 11
  %60 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %53, i32 %55, i32 %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %57, i32* %59, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %62 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %63 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %62)
  %64 = load i32, i32* @OID_AUTO, align 4
  %65 = load i32, i32* @CTLFLAG_RW, align 4
  %66 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %67 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %66, i32 0, i32 10
  %68 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %61, i32 %63, i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %65, i32* %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %69 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %70 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %71 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %70)
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLFLAG_RW, align 4
  %74 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %75 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %74, i32 0, i32 9
  %76 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %69, i32 %71, i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %73, i32* %75, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %77 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %78 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %79 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %78)
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RW, align 4
  %82 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %83 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %82, i32 0, i32 8
  %84 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %77, i32 %79, i32 %80, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %81, i32* %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %85 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %86 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %87 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %86)
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load i32, i32* @CTLFLAG_RW, align 4
  %90 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %91 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %90, i32 0, i32 7
  %92 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %85, i32 %87, i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %89, i32* %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0))
  %93 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %94 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %95 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %94)
  %96 = load i32, i32* @OID_AUTO, align 4
  %97 = load i32, i32* @CTLFLAG_RW, align 4
  %98 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %99 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %98, i32 0, i32 6
  %100 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %93, i32 %95, i32 %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 %97, i32* %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  %101 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %102 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %103 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %102)
  %104 = load i32, i32* @OID_AUTO, align 4
  %105 = load i32, i32* @CTLFLAG_RW, align 4
  %106 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %107 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %106, i32 0, i32 5
  %108 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %101, i32 %103, i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %105, i32* %107, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0))
  %109 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %110 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %111 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %110)
  %112 = load i32, i32* @OID_AUTO, align 4
  %113 = load i32, i32* @CTLFLAG_RW, align 4
  %114 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %115 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %114, i32 0, i32 4
  %116 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %109, i32 %111, i32 %112, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %113, i32* %115, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0))
  %117 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %118 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %119 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %118)
  %120 = load i32, i32* @OID_AUTO, align 4
  %121 = load i32, i32* @CTLFLAG_RD, align 4
  %122 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %123 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %122, i32 0, i32 3
  %124 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %117, i32 %119, i32 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32 %121, i32* %123, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0))
  %125 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %126 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %127 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %126)
  %128 = load i32, i32* @OID_AUTO, align 4
  %129 = load i32, i32* @CTLFLAG_RD, align 4
  %130 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %131 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %130, i32 0, i32 2
  %132 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %125, i32 %127, i32 %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 %129, i32* %131, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.27, i64 0, i64 0))
  %133 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %134 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %135 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %134)
  %136 = load i32, i32* @OID_AUTO, align 4
  %137 = load i32, i32* @CTLFLAG_RD, align 4
  %138 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %139 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %138, i32 0, i32 1
  %140 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %133, i32 %135, i32 %136, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 %137, i32* %139, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.29, i64 0, i64 0))
  %141 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %142 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %143 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %142)
  %144 = load i32, i32* @OID_AUTO, align 4
  %145 = load i32, i32* @CTLFLAG_RD, align 4
  %146 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %147 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %141, i32 %143, i32 %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i32 %145, i32* %148, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  br label %150

150:                                              ; preds = %20, %19, %11
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
