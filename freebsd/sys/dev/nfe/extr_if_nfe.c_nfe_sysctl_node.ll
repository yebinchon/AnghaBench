; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfe/extr_if_nfe.c_nfe_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfe_softc = type { i64, i32, i32, %struct.nfe_hw_stats }
%struct.nfe_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"process_limit\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_nfe_proc_limit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"max number of Rx events to process\00", align 1
@NFE_PROC_DEFAULT = common dso_local global i8* null, align 8
@NFE_PROC_MIN = common dso_local global i64 0, align 8
@NFE_PROC_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"process_limit value out of range; using default: %d\0A\00", align 1
@NFE_MIB_V1 = common dso_local global i32 0, align 4
@NFE_MIB_V2 = common dso_local global i32 0, align 4
@NFE_MIB_V3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"NFE statistics\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Rx MAC statistics\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"frame_errors\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"Framing Errors\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"extra_bytes\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Extra Bytes\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"late_cols\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Late Collisions\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"runts\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Runts\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"jumbos\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"Jumbos\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"fifo_overuns\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"FIFO Overruns\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"crc_errors\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"CRC Errors\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"fae\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"Frame Alignment Errors\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"len_errors\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"Length Errors\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"unicast\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"Unicast Frames\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"multicast\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Multicast Frames\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Broadcast Frames\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"octets\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"Octets\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Pause frames\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"drops\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Drop frames\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"Tx MAC statistics\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"zero_rexmits\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"Zero Retransmits\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"one_rexmits\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"One Retransmits\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"multi_rexmits\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"Multiple Retransmits\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"fifo_underuns\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"FIFO Underruns\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"carrier_losts\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"Carrier Losts\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"excess_deferrals\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"Excess Deferrals\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"retry_errors\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"Retry Errors\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"deferrals\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"Deferrals\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"Frames\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"Pause Frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfe_softc*)* @nfe_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfe_sysctl_node(%struct.nfe_softc* %0) #0 {
  %2 = alloca %struct.nfe_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.nfe_hw_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.nfe_softc* %0, %struct.nfe_softc** %2, align 8
  %9 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %10 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %9, i32 0, i32 3
  store %struct.nfe_hw_stats* %10, %struct.nfe_hw_stats** %7, align 8
  %11 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %13)
  store %struct.sysctl_ctx_list* %14, %struct.sysctl_ctx_list** %3, align 8
  %15 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %16 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %17)
  %19 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %18)
  store %struct.sysctl_oid_list* %19, %struct.sysctl_oid_list** %4, align 8
  %20 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %21 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %22 = load i32, i32* @OID_AUTO, align 4
  %23 = load i32, i32* @CTLTYPE_INT, align 4
  %24 = load i32, i32* @CTLFLAG_RW, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %27 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %26, i32 0, i32 0
  %28 = load i32, i32* @sysctl_hw_nfe_proc_limit, align 4
  %29 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %20, %struct.sysctl_oid_list* %21, i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %25, i64* %27, i32 0, i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i8*, i8** @NFE_PROC_DEFAULT, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %33 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %35 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @device_get_name(i32 %36)
  %38 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %39 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_get_unit(i32 %40)
  %42 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %43 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %42, i32 0, i32 0
  %44 = call i32 @resource_int_value(i32 %37, i32 %41, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %1
  %48 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %49 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NFE_PROC_MIN, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %55 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @NFE_PROC_MAX, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53, %47
  %60 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %61 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** @NFE_PROC_DEFAULT, align 8
  %64 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** @NFE_PROC_DEFAULT, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %68 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %59, %53
  br label %70

70:                                               ; preds = %69, %1
  %71 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %72 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NFE_MIB_V1, align 4
  %75 = load i32, i32* @NFE_MIB_V2, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @NFE_MIB_V3, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %73, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %277

82:                                               ; preds = %70
  %83 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %84 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %85 = load i32, i32* @OID_AUTO, align 4
  %86 = load i32, i32* @CTLFLAG_RD, align 4
  %87 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %83, %struct.sysctl_oid_list* %84, i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %86, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store %struct.sysctl_oid* %87, %struct.sysctl_oid** %6, align 8
  %88 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %89 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %88)
  store %struct.sysctl_oid_list* %89, %struct.sysctl_oid_list** %5, align 8
  %90 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %91 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %92 = load i32, i32* @OID_AUTO, align 4
  %93 = load i32, i32* @CTLFLAG_RD, align 4
  %94 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %90, %struct.sysctl_oid_list* %91, i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %93, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  store %struct.sysctl_oid* %94, %struct.sysctl_oid** %6, align 8
  %95 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %96 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %95)
  store %struct.sysctl_oid_list* %96, %struct.sysctl_oid_list** %4, align 8
  %97 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %98 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %99 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %100 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %99, i32 0, i32 26
  %101 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %97, %struct.sysctl_oid_list* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %102 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %103 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %104 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %105 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %104, i32 0, i32 25
  %106 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %102, %struct.sysctl_oid_list* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %107 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %108 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %109 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %110 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %109, i32 0, i32 24
  %111 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %107, %struct.sysctl_oid_list* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %112 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %113 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %114 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %115 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %114, i32 0, i32 23
  %116 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %112, %struct.sysctl_oid_list* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %117 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %118 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %119 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %120 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %119, i32 0, i32 22
  %121 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %117, %struct.sysctl_oid_list* %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  %122 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %123 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %124 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %125 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %124, i32 0, i32 21
  %126 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %122, %struct.sysctl_oid_list* %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %127 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %128 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %129 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %130 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %129, i32 0, i32 20
  %131 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %127, %struct.sysctl_oid_list* %128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32* %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %132 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %133 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %134 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %135 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %134, i32 0, i32 19
  %136 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %132, %struct.sysctl_oid_list* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32* %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0))
  %137 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %138 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %139 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %140 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %139, i32 0, i32 18
  %141 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %137, %struct.sysctl_oid_list* %138, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32* %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %142 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %143 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %144 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %145 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %144, i32 0, i32 17
  %146 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %142, %struct.sysctl_oid_list* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32* %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  %147 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %148 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %149 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %150 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %149, i32 0, i32 16
  %151 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %147, %struct.sysctl_oid_list* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %152 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %153 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %154 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %155 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %154, i32 0, i32 15
  %156 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %152, %struct.sysctl_oid_list* %153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32* %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  %157 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %158 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @NFE_MIB_V2, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %179

163:                                              ; preds = %82
  %164 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %165 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %166 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %167 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %166, i32 0, i32 14
  %168 = call i32 @NFE_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %164, %struct.sysctl_oid_list* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i32* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %169 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %170 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %171 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %172 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %171, i32 0, i32 13
  %173 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %169, %struct.sysctl_oid_list* %170, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  %174 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %175 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %176 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %177 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %176, i32 0, i32 12
  %178 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %174, %struct.sysctl_oid_list* %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i32* %177, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  br label %179

179:                                              ; preds = %163, %82
  %180 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %181 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %182 = load i32, i32* @OID_AUTO, align 4
  %183 = load i32, i32* @CTLFLAG_RD, align 4
  %184 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %180, %struct.sysctl_oid_list* %181, i32 %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), i32 %183, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0))
  store %struct.sysctl_oid* %184, %struct.sysctl_oid** %6, align 8
  %185 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %186 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %185)
  store %struct.sysctl_oid_list* %186, %struct.sysctl_oid_list** %4, align 8
  %187 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %188 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %189 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %190 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %189, i32 0, i32 11
  %191 = call i32 @NFE_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %187, %struct.sysctl_oid_list* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i32* %190, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i64 0, i64 0))
  %192 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %193 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %194 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %195 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %194, i32 0, i32 10
  %196 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %192, %struct.sysctl_oid_list* %193, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i64 0, i64 0), i32* %195, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0))
  %197 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %198 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %199 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %200 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %199, i32 0, i32 9
  %201 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %197, %struct.sysctl_oid_list* %198, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32* %200, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0))
  %202 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %203 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %204 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %205 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %204, i32 0, i32 8
  %206 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %202, %struct.sysctl_oid_list* %203, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i64 0, i64 0), i32* %205, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0))
  %207 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %208 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %209 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %210 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %209, i32 0, i32 7
  %211 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %207, %struct.sysctl_oid_list* %208, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32* %210, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %212 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %213 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %214 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %215 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %214, i32 0, i32 6
  %216 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %212, %struct.sysctl_oid_list* %213, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i32* %215, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0))
  %217 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %218 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %219 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %220 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %219, i32 0, i32 5
  %221 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %217, %struct.sysctl_oid_list* %218, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i32* %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.49, i64 0, i64 0))
  %222 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %223 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %224 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %225 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %224, i32 0, i32 4
  %226 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %222, %struct.sysctl_oid_list* %223, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i64 0, i64 0), i32* %225, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0))
  %227 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %228 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %229 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %230 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %229, i32 0, i32 3
  %231 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %227, %struct.sysctl_oid_list* %228, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.52, i64 0, i64 0), i32* %230, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0))
  %232 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %233 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @NFE_MIB_V2, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %254

238:                                              ; preds = %179
  %239 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %240 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %241 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %242 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %241, i32 0, i32 2
  %243 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %239, %struct.sysctl_oid_list* %240, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i64 0, i64 0), i32* %242, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0))
  %244 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %245 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %246 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %247 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %246, i32 0, i32 1
  %248 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %244, %struct.sysctl_oid_list* %245, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i64 0, i64 0), i32* %247, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0))
  %249 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %250 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %251 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %252 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %251, i32 0, i32 0
  %253 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %249, %struct.sysctl_oid_list* %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32* %252, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0))
  br label %254

254:                                              ; preds = %238, %179
  %255 = load %struct.nfe_softc*, %struct.nfe_softc** %2, align 8
  %256 = getelementptr inbounds %struct.nfe_softc, %struct.nfe_softc* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @NFE_MIB_V3, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %277

261:                                              ; preds = %254
  %262 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %263 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %264 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %265 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %264, i32 0, i32 2
  %266 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %262, %struct.sysctl_oid_list* %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32* %265, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  %267 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %268 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %269 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %270 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %269, i32 0, i32 1
  %271 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %267, %struct.sysctl_oid_list* %268, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32* %270, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %272 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %273 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %274 = load %struct.nfe_hw_stats*, %struct.nfe_hw_stats** %7, align 8
  %275 = getelementptr inbounds %struct.nfe_hw_stats, %struct.nfe_hw_stats* %274, i32 0, i32 0
  %276 = call i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %272, %struct.sysctl_oid_list* %273, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i32* %275, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  br label %277

277:                                              ; preds = %81, %261, %254
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i64*, i32, i32, i8*, i8*) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i64*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @NFE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

declare dso_local i32 @NFE_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
