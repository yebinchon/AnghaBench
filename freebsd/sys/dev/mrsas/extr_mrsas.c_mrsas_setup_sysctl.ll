; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_setup_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_setup_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, %struct.sysctl_oid*, %struct.sysctl_ctx_list, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"MRSAS controller %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_hw_mrsas = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"disable_ocr\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Disable the use of OCR\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"driver_version\00", align 1
@MRSAS_VERSION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"driver version\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"reset_count\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"number of ocr from start of the day\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"fw_outstanding\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"FW outstanding commands\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"io_cmds_highwater\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Max FW outstanding commands\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"mrsas_debug\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"Driver debug level\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"mrsas_io_timeout\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Driver IO timeout value in mili-second.\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"mrsas_fw_fault_check_delay\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"FW fault check thread delay in seconds. <default is 1 sec>\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"reset_in_progress\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"ocr in progress status\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"block_sync_cache\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"Block SYNC CACHE at driver. <default: 0, send it to FW>\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"stream detection\00", align 1
@.str.23 = private unnamed_addr constant [71 x i8] c"Disable/Enable Stream detection. <default: 1, Enable Stream Detection>\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"prp_count\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Number of IOs for which PRPs are built\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"SGE holes\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Number of IOs with holes in SGEs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mrsas_softc*)* @mrsas_setup_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mrsas_setup_sysctl(%struct.mrsas_softc* %0) #0 {
  %2 = alloca %struct.mrsas_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca [80 x i8], align 16
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %2, align 8
  store %struct.sysctl_ctx_list* null, %struct.sysctl_ctx_list** %3, align 8
  store %struct.sysctl_oid* null, %struct.sysctl_oid** %4, align 8
  %7 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %8 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call i32 @snprintf(i8* %7, i32 80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %14 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_get_unit(i32 %16)
  %18 = call i32 @snprintf(i8* %13, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %19, i32 0, i32 14
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %21)
  store %struct.sysctl_ctx_list* %22, %struct.sysctl_ctx_list** %3, align 8
  %23 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %24 = icmp ne %struct.sysctl_ctx_list* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %27 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %28)
  store %struct.sysctl_oid* %29, %struct.sysctl_oid** %4, align 8
  br label %30

30:                                               ; preds = %25, %1
  %31 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %32 = icmp eq %struct.sysctl_oid* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %35 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %34, i32 0, i32 13
  %36 = call i32 @sysctl_ctx_init(%struct.sysctl_ctx_list* %35)
  %37 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %38 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %37, i32 0, i32 13
  %39 = load i32, i32* @_hw_mrsas, align 4
  %40 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %39)
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %45 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %38, i32 %40, i32 %41, i8* %42, i32 %43, i32 0, i8* %44)
  %46 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %47 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %46, i32 0, i32 12
  store %struct.sysctl_oid* %45, %struct.sysctl_oid** %47, align 8
  %48 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %49 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %48, i32 0, i32 12
  %50 = load %struct.sysctl_oid*, %struct.sysctl_oid** %49, align 8
  %51 = icmp eq %struct.sysctl_oid* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  br label %168

53:                                               ; preds = %33
  %54 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %55 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %54, i32 0, i32 13
  store %struct.sysctl_ctx_list* %55, %struct.sysctl_ctx_list** %3, align 8
  %56 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %57 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %56, i32 0, i32 12
  %58 = load %struct.sysctl_oid*, %struct.sysctl_oid** %57, align 8
  store %struct.sysctl_oid* %58, %struct.sysctl_oid** %4, align 8
  br label %59

59:                                               ; preds = %53, %30
  %60 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %61 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %62 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %61)
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLFLAG_RW, align 4
  %65 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %66 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %65, i32 0, i32 11
  %67 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %60, i32 %62, i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32* %66, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %69 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %70 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %69)
  %71 = load i32, i32* @OID_AUTO, align 4
  %72 = load i32, i32* @CTLFLAG_RD, align 4
  %73 = load i32, i32* @MRSAS_VERSION, align 4
  %74 = load i32, i32* @MRSAS_VERSION, align 4
  %75 = call i32 @strlen(i32 %74)
  %76 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %68, i32 %70, i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 %73, i32 %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %77 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %78 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %79 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %78)
  %80 = load i32, i32* @OID_AUTO, align 4
  %81 = load i32, i32* @CTLFLAG_RD, align 4
  %82 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %83 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %82, i32 0, i32 10
  %84 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %77, i32 %79, i32 %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %81, i32* %83, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %85 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %86 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %87 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %86)
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load i32, i32* @CTLFLAG_RD, align 4
  %90 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %91 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %90, i32 0, i32 9
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %85, i32 %87, i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %89, i32* %92, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %94 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %95 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %96 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %95)
  %97 = load i32, i32* @OID_AUTO, align 4
  %98 = load i32, i32* @CTLFLAG_RD, align 4
  %99 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %100 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %99, i32 0, i32 8
  %101 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %94, i32 %96, i32 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %98, i32* %100, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %102 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %103 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %104 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %103)
  %105 = load i32, i32* @OID_AUTO, align 4
  %106 = load i32, i32* @CTLFLAG_RW, align 4
  %107 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %108 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %107, i32 0, i32 7
  %109 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %102, i32 %104, i32 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %106, i32* %108, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %110 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %111 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %112 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %111)
  %113 = load i32, i32* @OID_AUTO, align 4
  %114 = load i32, i32* @CTLFLAG_RW, align 4
  %115 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %116 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %115, i32 0, i32 6
  %117 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %110, i32 %112, i32 %113, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 %114, i32* %116, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  %118 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %119 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %120 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %119)
  %121 = load i32, i32* @OID_AUTO, align 4
  %122 = load i32, i32* @CTLFLAG_RW, align 4
  %123 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %124 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %123, i32 0, i32 5
  %125 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %118, i32 %120, i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %122, i32* %124, i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0))
  %126 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %127 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %128 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %127)
  %129 = load i32, i32* @OID_AUTO, align 4
  %130 = load i32, i32* @CTLFLAG_RD, align 4
  %131 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %132 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %131, i32 0, i32 4
  %133 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %126, i32 %128, i32 %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %130, i32* %132, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0))
  %134 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %135 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %136 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %135)
  %137 = load i32, i32* @OID_AUTO, align 4
  %138 = load i32, i32* @CTLFLAG_RW, align 4
  %139 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %140 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %139, i32 0, i32 3
  %141 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %134, i32 %136, i32 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %138, i32* %140, i32 0, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0))
  %142 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %143 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %144 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %143)
  %145 = load i32, i32* @OID_AUTO, align 4
  %146 = load i32, i32* @CTLFLAG_RW, align 4
  %147 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %148 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %147, i32 0, i32 2
  %149 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %142, i32 %144, i32 %145, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %146, i32* %148, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.23, i64 0, i64 0))
  %150 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %151 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %152 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %151)
  %153 = load i32, i32* @OID_AUTO, align 4
  %154 = load i32, i32* @CTLFLAG_RD, align 4
  %155 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %156 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %150, i32 %152, i32 %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32 %154, i32* %157, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0))
  %159 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %160 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %161 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %160)
  %162 = load i32, i32* @OID_AUTO, align 4
  %163 = load i32, i32* @CTLFLAG_RD, align 4
  %164 = load %struct.mrsas_softc*, %struct.mrsas_softc** %2, align 8
  %165 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %159, i32 %161, i32 %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i32 %163, i32* %166, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0))
  br label %168

168:                                              ; preds = %59, %52
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @sysctl_ctx_init(%struct.sysctl_ctx_list*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
