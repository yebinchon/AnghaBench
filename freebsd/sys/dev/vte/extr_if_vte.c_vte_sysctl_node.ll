; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vte/extr_if_vte.c_vte_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vte_softc = type { i64, i64, i32, %struct.vte_hw_stats }
%struct.vte_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"int_rx_mod\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_vte_int_mod = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"vte RX interrupt moderation\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"int_tx_mod\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"vte TX interrupt moderation\00", align 1
@VTE_IM_RX_BUNDLE_DEFAULT = common dso_local global i8* null, align 8
@VTE_IM_BUNDLE_MIN = common dso_local global i64 0, align 8
@VTE_IM_BUNDLE_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [50 x i8] c"int_rx_mod value out of range; using default: %d\0A\00", align 1
@VTE_IM_TX_BUNDLE_DEFAULT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"int_tx_mod value out of range; using default: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"VTE statistics\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"RX MAC statistics\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"good_frames\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Good frames\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"good_bcast_frames\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Good broadcast frames\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"good_mcast_frames\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Good multicast frames\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"runt\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Too short frames\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"crc_errs\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"CRC errors\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"long_frames\00", align 1
@.str.22 = private unnamed_addr constant [58 x i8] c"Frames that have longer length than maximum packet length\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"fifo_full\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"FIFO full\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"desc_unavail\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"Descriptor unavailable frames\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"pause_frames\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Pause control frames\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"TX MAC statistics\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"underruns\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"FIFO underruns\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"late_colls\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"Late collisions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vte_softc*)* @vte_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vte_sysctl_node(%struct.vte_softc* %0) #0 {
  %2 = alloca %struct.vte_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.vte_hw_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.vte_softc* %0, %struct.vte_softc** %2, align 8
  %9 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %9, i32 0, i32 3
  store %struct.vte_hw_stats* %10, %struct.vte_hw_stats** %7, align 8
  %11 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %13)
  store %struct.sysctl_ctx_list* %14, %struct.sysctl_ctx_list** %3, align 8
  %15 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %15, i32 0, i32 2
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
  %26 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %26, i32 0, i32 0
  %28 = load i32, i32* @sysctl_hw_vte_int_mod, align 4
  %29 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %20, %struct.sysctl_oid_list* %21, i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25, i64* %27, i32 0, i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %31 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLTYPE_INT, align 4
  %34 = load i32, i32* @CTLFLAG_RW, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %37 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %36, i32 0, i32 1
  %38 = load i32, i32* @sysctl_hw_vte_int_mod, align 4
  %39 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %30, %struct.sysctl_oid_list* %31, i32 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %35, i64* %37, i32 0, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i8*, i8** @VTE_IM_RX_BUNDLE_DEFAULT, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %43 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %45 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_get_name(i32 %46)
  %48 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %49 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @device_get_unit(i32 %50)
  %52 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %53 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %52, i32 0, i32 0
  %54 = call i32 @resource_int_value(i32 %47, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %1
  %58 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %59 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VTE_IM_BUNDLE_MIN, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %65 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VTE_IM_BUNDLE_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %63, %57
  %70 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %71 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** @VTE_IM_RX_BUNDLE_DEFAULT, align 8
  %74 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** @VTE_IM_RX_BUNDLE_DEFAULT, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %78 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %69, %63
  br label %80

80:                                               ; preds = %79, %1
  %81 = load i8*, i8** @VTE_IM_TX_BUNDLE_DEFAULT, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %84 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %86 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @device_get_name(i32 %87)
  %89 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %90 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @device_get_unit(i32 %91)
  %93 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %94 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %93, i32 0, i32 1
  %95 = call i32 @resource_int_value(i32 %88, i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %121

98:                                               ; preds = %80
  %99 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %100 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VTE_IM_BUNDLE_MIN, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %106 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VTE_IM_BUNDLE_MAX, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %104, %98
  %111 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %112 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i8*, i8** @VTE_IM_TX_BUNDLE_DEFAULT, align 8
  %115 = call i32 @device_printf(i32 %113, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %114)
  %116 = load i8*, i8** @VTE_IM_TX_BUNDLE_DEFAULT, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.vte_softc*, %struct.vte_softc** %2, align 8
  %119 = getelementptr inbounds %struct.vte_softc, %struct.vte_softc* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %110, %104
  br label %121

121:                                              ; preds = %120, %80
  %122 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %123 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLFLAG_RD, align 4
  %126 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %122, %struct.sysctl_oid_list* %123, i32 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %125, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store %struct.sysctl_oid* %126, %struct.sysctl_oid** %6, align 8
  %127 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %128 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %127)
  store %struct.sysctl_oid_list* %128, %struct.sysctl_oid_list** %5, align 8
  %129 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %130 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %131 = load i32, i32* @OID_AUTO, align 4
  %132 = load i32, i32* @CTLFLAG_RD, align 4
  %133 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %129, %struct.sysctl_oid_list* %130, i32 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %132, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  store %struct.sysctl_oid* %133, %struct.sysctl_oid** %6, align 8
  %134 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %135 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %134)
  store %struct.sysctl_oid_list* %135, %struct.sysctl_oid_list** %4, align 8
  %136 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %137 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %138 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %139 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %138, i32 0, i32 12
  %140 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %136, %struct.sysctl_oid_list* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %139, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %141 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %142 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %143 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %144 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %143, i32 0, i32 11
  %145 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %141, %struct.sysctl_oid_list* %142, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32* %144, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %146 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %147 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %148 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %149 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %148, i32 0, i32 10
  %150 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %146, %struct.sysctl_oid_list* %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32* %149, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %151 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %152 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %153 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %154 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %153, i32 0, i32 9
  %155 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %151, %struct.sysctl_oid_list* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32* %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %156 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %157 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %158 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %159 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %158, i32 0, i32 8
  %160 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %156, %struct.sysctl_oid_list* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32* %159, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  %161 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %162 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %163 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %164 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %163, i32 0, i32 7
  %165 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %161, %struct.sysctl_oid_list* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32* %164, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.22, i64 0, i64 0))
  %166 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %167 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %168 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %169 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %168, i32 0, i32 6
  %170 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %166, %struct.sysctl_oid_list* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i32* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %171 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %172 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %173 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %174 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %173, i32 0, i32 5
  %175 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %171, %struct.sysctl_oid_list* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0))
  %176 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %177 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %178 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %179 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %178, i32 0, i32 4
  %180 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %176, %struct.sysctl_oid_list* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32* %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
  %181 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %182 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %183 = load i32, i32* @OID_AUTO, align 4
  %184 = load i32, i32* @CTLFLAG_RD, align 4
  %185 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %181, %struct.sysctl_oid_list* %182, i32 %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32 %184, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  store %struct.sysctl_oid* %185, %struct.sysctl_oid** %6, align 8
  %186 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %187 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %186)
  store %struct.sysctl_oid_list* %187, %struct.sysctl_oid_list** %4, align 8
  %188 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %189 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %190 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %191 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %190, i32 0, i32 3
  %192 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %188, %struct.sysctl_oid_list* %189, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %191, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %193 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %194 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %195 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %196 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %195, i32 0, i32 2
  %197 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %193, %struct.sysctl_oid_list* %194, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i32* %196, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  %198 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %199 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %200 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %201 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %200, i32 0, i32 1
  %202 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %198, %struct.sysctl_oid_list* %199, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i32* %201, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0))
  %203 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %204 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %205 = load %struct.vte_hw_stats*, %struct.vte_hw_stats** %7, align 8
  %206 = getelementptr inbounds %struct.vte_hw_stats, %struct.vte_hw_stats* %205, i32 0, i32 0
  %207 = call i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %203, %struct.sysctl_oid_list* %204, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), i32* %206, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0))
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

declare dso_local i32 @VTE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
