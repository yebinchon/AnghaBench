; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i64, i64, i64, i32, %struct.alc_hw_stats }
%struct.alc_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"int_rx_mod\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_alc_int_mod = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"alc Rx interrupt moderation\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"int_tx_mod\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"alc Tx interrupt moderation\00", align 1
@ALC_IM_RX_TIMER_DEFAULT = common dso_local global i8* null, align 8
@ALC_IM_TIMER_MIN = common dso_local global i64 0, align 8
@ALC_IM_TIMER_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"int_rx_mod value out of range; using default: %d\0A\00", align 1
@ALC_IM_TX_TIMER_DEFAULT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"int_tx_mod value out of range; using default: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"process_limit\00", align 1
@sysctl_hw_alc_proc_limit = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"max number of Rx events to process\00", align 1
@ALC_PROC_DEFAULT = common dso_local global i8* null, align 8
@ALC_PROC_MIN = common dso_local global i64 0, align 8
@ALC_PROC_MAX = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [53 x i8] c"process_limit value out of range; using default: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"ALC statistics\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Rx MAC statistics\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"good_frames\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Good frames\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"good_bcast_frames\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Good broadcast frames\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"good_mcast_frames\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Good multicast frames\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"pause_frames\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Pause control frames\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"control_frames\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"Control frames\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"crc_errs\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"CRC errors\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"len_errs\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Frames with length mismatched\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"good_octets\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Good octets\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"good_bcast_octets\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"Good broadcast octets\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"good_mcast_octets\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"Good multicast octets\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"runts\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"Too short frames\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"fragments\00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"Fragmented frames\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"frames_64\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"64 bytes frames\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"frames_65_127\00", align 1
@.str.41 = private unnamed_addr constant [23 x i8] c"65 to 127 bytes frames\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"frames_128_255\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"128 to 255 bytes frames\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"frames_256_511\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"256 to 511 bytes frames\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"frames_512_1023\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"512 to 1023 bytes frames\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"frames_1024_1518\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"1024 to 1518 bytes frames\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"frames_1519_max\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"1519 to max frames\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"trunc_errs\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c"Truncated frames due to MTU size\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"fifo_oflows\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"FIFO overflows\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"rrs_errs\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Return status write-back errors\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"align_errs\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"Alignment errors\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"filtered\00", align 1
@.str.61 = private unnamed_addr constant [40 x i8] c"Frames dropped due to address filtering\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Tx MAC statistics\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"excess_defers\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"Frames with excessive derferrals\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"defers\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"Frames with derferrals\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"single_colls\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"Single collisions\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"multi_colls\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Multiple collisions\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"late_colls\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"Late collisions\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"excess_colls\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"Excessive collisions\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"underruns\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"FIFO underruns\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"desc_underruns\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"Descriptor write-back errors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*)* @alc_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_sysctl_node(%struct.alc_softc* %0) #0 {
  %2 = alloca %struct.alc_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.alc_hw_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %2, align 8
  %9 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %9, i32 0, i32 4
  store %struct.alc_hw_stats* %10, %struct.alc_hw_stats** %7, align 8
  %11 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %12 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %13)
  store %struct.sysctl_ctx_list* %14, %struct.sysctl_ctx_list** %3, align 8
  %15 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %17)
  %19 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %18)
  store %struct.sysctl_oid_list* %19, %struct.sysctl_oid_list** %4, align 8
  %20 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %21 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %22 = load i32, i32* @OID_AUTO, align 4
  %23 = load i32, i32* @CTLTYPE_INT, align 4
  %24 = load i32, i32* @CTLFLAG_RW, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %27 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %26, i32 0, i32 0
  %28 = load i32, i32* @sysctl_hw_alc_int_mod, align 4
  %29 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %20, %struct.sysctl_oid_list* %21, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25, i64* %27, i32 0, i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLTYPE_INT, align 4
  %34 = load i32, i32* @CTLFLAG_RW, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %37 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %36, i32 0, i32 1
  %38 = load i32, i32* @sysctl_hw_alc_int_mod, align 4
  %39 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %35, i64* %37, i32 0, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i8*, i8** @ALC_IM_RX_TIMER_DEFAULT, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %43 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %45 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_get_name(i32 %46)
  %48 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %49 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @device_get_unit(i32 %50)
  %52 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %53 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %52, i32 0, i32 0
  %54 = call i32 @resource_int_value(i32 %47, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %1
  %58 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %59 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ALC_IM_TIMER_MIN, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %65 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ALC_IM_TIMER_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63, %57
  %70 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %71 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** @ALC_IM_RX_TIMER_DEFAULT, align 8
  %74 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** @ALC_IM_RX_TIMER_DEFAULT, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %78 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %69, %63
  br label %80

80:                                               ; preds = %79, %1
  %81 = load i8*, i8** @ALC_IM_TX_TIMER_DEFAULT, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %84 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %86 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @device_get_name(i32 %87)
  %89 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %90 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @device_get_unit(i32 %91)
  %93 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %94 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %93, i32 0, i32 1
  %95 = call i32 @resource_int_value(i32 %88, i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %80
  %99 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %100 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @ALC_IM_TIMER_MIN, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %106 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ALC_IM_TIMER_MAX, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %104, %98
  %111 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %112 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** @ALC_IM_TX_TIMER_DEFAULT, align 8
  %115 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %114)
  %116 = load i8*, i8** @ALC_IM_TX_TIMER_DEFAULT, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %119 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %110, %104
  br label %121

121:                                              ; preds = %120, %80
  %122 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %123 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLTYPE_INT, align 4
  %126 = load i32, i32* @CTLFLAG_RW, align 4
  %127 = or i32 %125, %126
  %128 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %129 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %128, i32 0, i32 2
  %130 = load i32, i32* @sysctl_hw_alc_proc_limit, align 4
  %131 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %122, %struct.sysctl_oid_list* %123, i32 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %127, i64* %129, i32 0, i32 %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %132 = load i8*, i8** @ALC_PROC_DEFAULT, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %135 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  %136 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %137 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @device_get_name(i32 %138)
  %140 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %141 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @device_get_unit(i32 %142)
  %144 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %145 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %144, i32 0, i32 2
  %146 = call i32 @resource_int_value(i32 %139, i32 %143, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %121
  %150 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %151 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ALC_PROC_MIN, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %157 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @ALC_PROC_MAX, align 8
  %160 = icmp sgt i64 %158, %159
  br i1 %160, label %161, label %171

161:                                              ; preds = %155, %149
  %162 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %163 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i8*, i8** @ALC_PROC_DEFAULT, align 8
  %166 = call i32 @device_printf(i32 %164, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9, i64 0, i64 0), i8* %165)
  %167 = load i8*, i8** @ALC_PROC_DEFAULT, align 8
  %168 = ptrtoint i8* %167 to i64
  %169 = load %struct.alc_softc*, %struct.alc_softc** %2, align 8
  %170 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %169, i32 0, i32 2
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %161, %155
  br label %172

172:                                              ; preds = %171, %121
  %173 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %174 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %175 = load i32, i32* @OID_AUTO, align 4
  %176 = load i32, i32* @CTLFLAG_RD, align 4
  %177 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %173, %struct.sysctl_oid_list* %174, i32 %175, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %176, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  store %struct.sysctl_oid* %177, %struct.sysctl_oid** %6, align 8
  %178 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %179 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %178)
  store %struct.sysctl_oid_list* %179, %struct.sysctl_oid_list** %5, align 8
  %180 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %181 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %182 = load i32, i32* @OID_AUTO, align 4
  %183 = load i32, i32* @CTLFLAG_RD, align 4
  %184 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %180, %struct.sysctl_oid_list* %181, i32 %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %183, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  store %struct.sysctl_oid* %184, %struct.sysctl_oid** %6, align 8
  %185 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %186 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %185)
  store %struct.sysctl_oid_list* %186, %struct.sysctl_oid_list** %4, align 8
  %187 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %188 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %189 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %190 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %189, i32 0, i32 47
  %191 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %187, %struct.sysctl_oid_list* %188, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32* %190, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %192 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %193 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %194 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %195 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %194, i32 0, i32 46
  %196 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %192, %struct.sysctl_oid_list* %193, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32* %195, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %197 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %198 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %199 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %200 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %199, i32 0, i32 45
  %201 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %197, %struct.sysctl_oid_list* %198, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32* %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %202 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %203 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %204 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %205 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %204, i32 0, i32 44
  %206 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %202, %struct.sysctl_oid_list* %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32* %205, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %207 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %208 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %209 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %210 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %209, i32 0, i32 43
  %211 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %207, %struct.sysctl_oid_list* %208, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32* %210, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %212 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %213 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %214 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %215 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %214, i32 0, i32 42
  %216 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %212, %struct.sysctl_oid_list* %213, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32* %215, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %217 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %218 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %219 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %220 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %219, i32 0, i32 41
  %221 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %217, %struct.sysctl_oid_list* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32* %220, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0))
  %222 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %223 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %224 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %225 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %224, i32 0, i32 40
  %226 = call i32 @ALC_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %222, %struct.sysctl_oid_list* %223, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32* %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %227 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %228 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %229 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %230 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %229, i32 0, i32 39
  %231 = call i32 @ALC_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %227, %struct.sysctl_oid_list* %228, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32* %230, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  %232 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %233 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %234 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %235 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %234, i32 0, i32 38
  %236 = call i32 @ALC_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %232, %struct.sysctl_oid_list* %233, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i32* %235, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0))
  %237 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %238 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %239 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %240 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %239, i32 0, i32 37
  %241 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %237, %struct.sysctl_oid_list* %238, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32* %240, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  %242 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %243 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %244 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %245 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %244, i32 0, i32 36
  %246 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %242, %struct.sysctl_oid_list* %243, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i32* %245, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0))
  %247 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %248 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %249 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %250 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %249, i32 0, i32 35
  %251 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %247, %struct.sysctl_oid_list* %248, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i32* %250, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %252 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %253 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %254 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %255 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %254, i32 0, i32 34
  %256 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %252, %struct.sysctl_oid_list* %253, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32* %255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0))
  %257 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %258 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %259 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %260 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %259, i32 0, i32 33
  %261 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %257, %struct.sysctl_oid_list* %258, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32* %260, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0))
  %262 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %263 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %264 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %265 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %264, i32 0, i32 32
  %266 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %262, %struct.sysctl_oid_list* %263, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i32* %265, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0))
  %267 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %268 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %269 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %270 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %269, i32 0, i32 31
  %271 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %267, %struct.sysctl_oid_list* %268, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i32* %270, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0))
  %272 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %273 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %274 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %275 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %274, i32 0, i32 30
  %276 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %272, %struct.sysctl_oid_list* %273, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i32* %275, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i64 0, i64 0))
  %277 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %278 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %279 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %280 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %279, i32 0, i32 29
  %281 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %277, %struct.sysctl_oid_list* %278, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i32* %280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0))
  %282 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %283 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %284 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %285 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %284, i32 0, i32 28
  %286 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %282, %struct.sysctl_oid_list* %283, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0), i32* %285, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0))
  %287 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %288 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %289 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %290 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %289, i32 0, i32 27
  %291 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %287, %struct.sysctl_oid_list* %288, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i64 0, i64 0), i32* %290, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.55, i64 0, i64 0))
  %292 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %293 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %294 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %295 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %294, i32 0, i32 26
  %296 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %292, %struct.sysctl_oid_list* %293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i32* %295, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0))
  %297 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %298 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %299 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %300 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %299, i32 0, i32 25
  %301 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %297, %struct.sysctl_oid_list* %298, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.58, i64 0, i64 0), i32* %300, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0))
  %302 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %303 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %304 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %305 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %304, i32 0, i32 24
  %306 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %302, %struct.sysctl_oid_list* %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i64 0, i64 0), i32* %305, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.61, i64 0, i64 0))
  %307 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %308 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %309 = load i32, i32* @OID_AUTO, align 4
  %310 = load i32, i32* @CTLFLAG_RD, align 4
  %311 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %307, %struct.sysctl_oid_list* %308, i32 %309, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i64 0, i64 0), i32 %310, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.63, i64 0, i64 0))
  store %struct.sysctl_oid* %311, %struct.sysctl_oid** %6, align 8
  %312 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %313 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %312)
  store %struct.sysctl_oid_list* %313, %struct.sysctl_oid_list** %4, align 8
  %314 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %315 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %316 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %317 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %316, i32 0, i32 23
  %318 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %314, %struct.sysctl_oid_list* %315, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32* %317, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %319 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %320 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %321 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %322 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %321, i32 0, i32 22
  %323 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %319, %struct.sysctl_oid_list* %320, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32* %322, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %324 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %325 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %326 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %327 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %326, i32 0, i32 21
  %328 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %324, %struct.sysctl_oid_list* %325, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32* %327, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %329 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %330 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %331 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %332 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %331, i32 0, i32 20
  %333 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %329, %struct.sysctl_oid_list* %330, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32* %332, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %334 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %335 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %336 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %337 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %336, i32 0, i32 19
  %338 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %334, %struct.sysctl_oid_list* %335, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32* %337, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0))
  %339 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %340 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %341 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %342 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %341, i32 0, i32 18
  %343 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %339, %struct.sysctl_oid_list* %340, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i64 0, i64 0), i32* %342, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i64 0, i64 0))
  %344 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %345 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %346 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %347 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %346, i32 0, i32 18
  %348 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %344, %struct.sysctl_oid_list* %345, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i32* %347, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i64 0, i64 0))
  %349 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %350 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %351 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %352 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %351, i32 0, i32 17
  %353 = call i32 @ALC_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %349, %struct.sysctl_oid_list* %350, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i32* %352, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %354 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %355 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %356 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %357 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %356, i32 0, i32 16
  %358 = call i32 @ALC_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %354, %struct.sysctl_oid_list* %355, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32* %357, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0))
  %359 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %360 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %361 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %362 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %361, i32 0, i32 15
  %363 = call i32 @ALC_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %359, %struct.sysctl_oid_list* %360, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i32* %362, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0))
  %364 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %365 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %366 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %367 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %366, i32 0, i32 14
  %368 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %364, %struct.sysctl_oid_list* %365, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0), i32* %367, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0))
  %369 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %370 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %371 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %372 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %371, i32 0, i32 13
  %373 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %369, %struct.sysctl_oid_list* %370, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i32* %372, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0))
  %374 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %375 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %376 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %377 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %376, i32 0, i32 12
  %378 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %374, %struct.sysctl_oid_list* %375, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i32* %377, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i64 0, i64 0))
  %379 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %380 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %381 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %382 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %381, i32 0, i32 11
  %383 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %379, %struct.sysctl_oid_list* %380, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i32* %382, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.45, i64 0, i64 0))
  %384 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %385 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %386 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %387 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %386, i32 0, i32 10
  %388 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %384, %struct.sysctl_oid_list* %385, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i64 0, i64 0), i32* %387, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i64 0, i64 0))
  %389 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %390 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %391 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %392 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %391, i32 0, i32 9
  %393 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %389, %struct.sysctl_oid_list* %390, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), i32* %392, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i64 0, i64 0))
  %394 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %395 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %396 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %397 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %396, i32 0, i32 8
  %398 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %394, %struct.sysctl_oid_list* %395, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i64 0, i64 0), i32* %397, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i64 0, i64 0))
  %399 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %400 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %401 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %402 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %401, i32 0, i32 7
  %403 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %399, %struct.sysctl_oid_list* %400, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.68, i64 0, i64 0), i32* %402, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i64 0, i64 0))
  %404 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %405 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %406 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %407 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %406, i32 0, i32 6
  %408 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %404, %struct.sysctl_oid_list* %405, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.70, i64 0, i64 0), i32* %407, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.71, i64 0, i64 0))
  %409 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %410 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %411 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %412 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %411, i32 0, i32 5
  %413 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %409, %struct.sysctl_oid_list* %410, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), i32* %412, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i64 0, i64 0))
  %414 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %415 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %416 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %417 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %416, i32 0, i32 4
  %418 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %414, %struct.sysctl_oid_list* %415, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i64 0, i64 0), i32* %417, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i64 0, i64 0))
  %419 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %420 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %421 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %422 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %421, i32 0, i32 3
  %423 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %419, %struct.sysctl_oid_list* %420, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0), i32* %422, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.77, i64 0, i64 0))
  %424 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %425 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %426 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %427 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %426, i32 0, i32 2
  %428 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %424, %struct.sysctl_oid_list* %425, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i64 0, i64 0), i32* %427, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i64 0, i64 0))
  %429 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %430 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %431 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %432 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %431, i32 0, i32 1
  %433 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %429, %struct.sysctl_oid_list* %430, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32* %432, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0))
  %434 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %435 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %436 = load %struct.alc_hw_stats*, %struct.alc_hw_stats** %7, align 8
  %437 = getelementptr inbounds %struct.alc_hw_stats, %struct.alc_hw_stats* %436, i32 0, i32 0
  %438 = call i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %434, %struct.sysctl_oid_list* %435, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0), i32* %437, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0))
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

declare dso_local i32 @ALC_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

declare dso_local i32 @ALC_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
