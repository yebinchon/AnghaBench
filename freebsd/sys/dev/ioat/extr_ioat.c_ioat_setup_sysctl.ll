; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_setup_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ioat/extr_ioat.c_ioat_setup_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.ioat_softc = type { %struct.TYPE_2__, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"HW version (0xMM form)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"max_xfer_size\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"HW maximum transfer size\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"intrdelay_supported\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Is INTRDELAY supported\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"intrdelay_max\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"Maximum configurable INTRDELAY on this channel (microseconds)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"IOAT channel internal state\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"ring_size_order\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"SW descriptor ring size order\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"SW descriptor head pointer index\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"tail\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"SW descriptor tail pointer index\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"last_completion\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"HW addr of last completion\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"is_submitter_processing\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"submitter processing\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"chansts\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@sysctl_handle_chansts = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"String of the channel status\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"intrdelay\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"Current INTRDELAY on this channel (cached, microseconds)\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"hammer\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Big hammers (mostly for testing)\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"force_hw_reset\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_handle_reset = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Set to non-zero to reset the hardware\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"IOAT channel statistics\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@CTLFLAG_STATS = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [47 x i8] c"Number of interrupts processed on this channel\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"descriptors\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"Number of descriptors processed on this channel\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"submitted\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"Number of descriptors submitted to this channel\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"errored\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"Number of descriptors failed by channel errors\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"halts\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"Number of times the channel has halted\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"last_halt_chanerr\00", align 1
@.str.43 = private unnamed_addr constant [49 x i8] c"The raw CHANERR when the channel was last halted\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"desc_per_interrupt\00", align 1
@sysctl_handle_dpi = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [26 x i8] c"Descriptors per interrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ioat_setup_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_setup_sysctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysctl_oid_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca %struct.ioat_softc*, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.ioat_softc* @DEVICE2SOFTC(i32 %11)
  store %struct.ioat_softc* %12, %struct.ioat_softc** %10, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %13)
  store %struct.sysctl_ctx_list* %14, %struct.sysctl_ctx_list** %7, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %15)
  store %struct.sysctl_oid* %16, %struct.sysctl_oid** %8, align 8
  %17 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %18 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  store %struct.sysctl_oid_list* %18, %struct.sysctl_oid_list** %3, align 8
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %20 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RD, align 4
  %23 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %24 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %23, i32 0, i32 10
  %25 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %19, %struct.sysctl_oid_list* %20, i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %24, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RD, align 4
  %30 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %31 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %30, i32 0, i32 9
  %32 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32* %31, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %34 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %38 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %37, i32 0, i32 8
  %39 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %33, %struct.sysctl_oid_list* %34, i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32* %38, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %40 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %41 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %45 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %44, i32 0, i32 7
  %46 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %40, %struct.sysctl_oid_list* %41, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %43, i32* %45, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0))
  %47 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %48 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLFLAG_RD, align 4
  %51 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %47, %struct.sysctl_oid_list* %48, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %50, i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store %struct.sysctl_oid* %51, %struct.sysctl_oid** %9, align 8
  %52 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %53 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %52)
  store %struct.sysctl_oid_list* %53, %struct.sysctl_oid_list** %5, align 8
  %54 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %55 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %56 = load i32, i32* @OID_AUTO, align 4
  %57 = load i32, i32* @CTLFLAG_RD, align 4
  %58 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %59 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %58, i32 0, i32 6
  %60 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %54, %struct.sysctl_oid_list* %55, i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %57, i32* %59, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %62 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLFLAG_RD, align 4
  %65 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %66 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %65, i32 0, i32 5
  %67 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %61, %struct.sysctl_oid_list* %62, i32 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 %64, i32* %66, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %68 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %69 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %70 = load i32, i32* @OID_AUTO, align 4
  %71 = load i32, i32* @CTLFLAG_RD, align 4
  %72 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %73 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %72, i32 0, i32 4
  %74 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %68, %struct.sysctl_oid_list* %69, i32 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %71, i32* %73, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %75 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %76 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %77 = load i32, i32* @OID_AUTO, align 4
  %78 = load i32, i32* @CTLFLAG_RD, align 4
  %79 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %80 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %75, %struct.sysctl_oid_list* %76, i32 %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %78, i32* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0))
  %83 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %84 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %85 = load i32, i32* @OID_AUTO, align 4
  %86 = load i32, i32* @CTLFLAG_RD, align 4
  %87 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %88 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %87, i32 0, i32 2
  %89 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %83, %struct.sysctl_oid_list* %84, i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %86, i32* %88, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %90 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %91 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %92 = load i32, i32* @OID_AUTO, align 4
  %93 = load i32, i32* @CTLTYPE_STRING, align 4
  %94 = load i32, i32* @CTLFLAG_RD, align 4
  %95 = or i32 %93, %94
  %96 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %97 = load i32, i32* @sysctl_handle_chansts, align 4
  %98 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %90, %struct.sysctl_oid_list* %91, i32 %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i32 %95, %struct.ioat_softc* %96, i32 0, i32 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  %99 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %100 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %101 = load i32, i32* @OID_AUTO, align 4
  %102 = load i32, i32* @CTLFLAG_RD, align 4
  %103 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %104 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %103, i32 0, i32 1
  %105 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %99, %struct.sysctl_oid_list* %100, i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32 %102, i32* %104, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.24, i64 0, i64 0))
  %106 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %107 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %108 = load i32, i32* @OID_AUTO, align 4
  %109 = load i32, i32* @CTLFLAG_RD, align 4
  %110 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %106, %struct.sysctl_oid_list* %107, i32 %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i32 %109, i32* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0))
  store %struct.sysctl_oid* %110, %struct.sysctl_oid** %9, align 8
  %111 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %112 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %111)
  store %struct.sysctl_oid_list* %112, %struct.sysctl_oid_list** %6, align 8
  %113 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %114 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %115 = load i32, i32* @OID_AUTO, align 4
  %116 = load i32, i32* @CTLTYPE_INT, align 4
  %117 = load i32, i32* @CTLFLAG_RW, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %120 = load i32, i32* @sysctl_handle_reset, align 4
  %121 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %113, %struct.sysctl_oid_list* %114, i32 %115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 %118, %struct.ioat_softc* %119, i32 0, i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.29, i64 0, i64 0))
  %122 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %123 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLFLAG_RD, align 4
  %126 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %122, %struct.sysctl_oid_list* %123, i32 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 %125, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0))
  store %struct.sysctl_oid* %126, %struct.sysctl_oid** %9, align 8
  %127 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %128 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %127)
  store %struct.sysctl_oid_list* %128, %struct.sysctl_oid_list** %4, align 8
  %129 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %130 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %131 = load i32, i32* @OID_AUTO, align 4
  %132 = load i32, i32* @CTLFLAG_RW, align 4
  %133 = load i32, i32* @CTLFLAG_STATS, align 4
  %134 = or i32 %132, %133
  %135 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %136 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 5
  %138 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %129, %struct.sysctl_oid_list* %130, i32 %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 %134, i32* %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.33, i64 0, i64 0))
  %139 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %140 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %141 = load i32, i32* @OID_AUTO, align 4
  %142 = load i32, i32* @CTLFLAG_RW, align 4
  %143 = load i32, i32* @CTLFLAG_STATS, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %146 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 4
  %148 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %139, %struct.sysctl_oid_list* %140, i32 %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 %144, i32* %147, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.35, i64 0, i64 0))
  %149 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %150 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %151 = load i32, i32* @OID_AUTO, align 4
  %152 = load i32, i32* @CTLFLAG_RW, align 4
  %153 = load i32, i32* @CTLFLAG_STATS, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %156 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  %158 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %149, %struct.sysctl_oid_list* %150, i32 %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i32 %154, i32* %157, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i64 0, i64 0))
  %159 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %160 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %161 = load i32, i32* @OID_AUTO, align 4
  %162 = load i32, i32* @CTLFLAG_RW, align 4
  %163 = load i32, i32* @CTLFLAG_STATS, align 4
  %164 = or i32 %162, %163
  %165 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %166 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 2
  %168 = call i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list* %159, %struct.sysctl_oid_list* %160, i32 %161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0), i32 %164, i32* %167, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i64 0, i64 0))
  %169 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %170 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %171 = load i32, i32* @OID_AUTO, align 4
  %172 = load i32, i32* @CTLFLAG_RW, align 4
  %173 = load i32, i32* @CTLFLAG_STATS, align 4
  %174 = or i32 %172, %173
  %175 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %176 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = call i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list* %169, %struct.sysctl_oid_list* %170, i32 %171, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0), i32 %174, i32* %177, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.41, i64 0, i64 0))
  %179 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %180 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %181 = load i32, i32* @OID_AUTO, align 4
  %182 = load i32, i32* @CTLFLAG_RW, align 4
  %183 = load i32, i32* @CTLFLAG_STATS, align 4
  %184 = or i32 %182, %183
  %185 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %186 = getelementptr inbounds %struct.ioat_softc, %struct.ioat_softc* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = call i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list* %179, %struct.sysctl_oid_list* %180, i32 %181, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i32 %184, i32* %187, i32 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.43, i64 0, i64 0))
  %189 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %190 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %191 = load i32, i32* @OID_AUTO, align 4
  %192 = load i32, i32* @CTLTYPE_STRING, align 4
  %193 = load i32, i32* @CTLFLAG_RD, align 4
  %194 = or i32 %192, %193
  %195 = load %struct.ioat_softc*, %struct.ioat_softc** %10, align 8
  %196 = load i32, i32* @sysctl_handle_dpi, align 4
  %197 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %189, %struct.sysctl_oid_list* %190, i32 %191, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), i32 %194, %struct.ioat_softc* %195, i32 0, i32 %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ioat_softc* @DEVICE2SOFTC(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.ioat_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
