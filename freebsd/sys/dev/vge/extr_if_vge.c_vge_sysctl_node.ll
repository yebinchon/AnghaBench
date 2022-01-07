; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, i32, i32, i32, %struct.vge_hw_stats }
%struct.vge_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"int_holdoff\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"interrupt holdoff\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rx_coal_pkt\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"rx coalescing packet\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tx_coal_pkt\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"tx coalescing packet\00", align 1
@VGE_INT_HOLDOFF_DEFAULT = common dso_local global i32 0, align 4
@VGE_RX_COAL_PKT_DEFAULT = common dso_local global i32 0, align 4
@VGE_TX_COAL_PKT_DEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"VGE statistics\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"RX MAC statistics\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"good_frames\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Good frames\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"fifo_oflows\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"FIFO overflows\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"runts\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Too short frames\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"runts_errs\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Too short frames with errors\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"frames_64\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"64 bytes frames\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"frames_65_127\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"65 to 127 bytes frames\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"frames_128_255\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"128 to 255 bytes frames\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"frames_256_511\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"256 to 511 bytes frames\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"frames_512_1023\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"512 to 1023 bytes frames\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"frames_1024_1518\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"1024 to 1518 bytes frames\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"frames_1519_max\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"1519 to max frames\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"frames_1519_max_errs\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"1519 to max frames with error\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"frames_jumbo\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Jumbo frames\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"crcerrs\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"CRC errors\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"pause_frames\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"align_errs\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"Alignment errors\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"nobufs\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"Frames with no buffer event\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"sym_errs\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"Frames with symbol errors\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"len_errs\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Frames with length mismatched\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"TX MAC statistics\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"colls\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"Collisions\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"late_colls\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"Late collisions\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"Pause frames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_sysctl_node(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.vge_hw_stats*, align 8
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %8 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %8, i32 0, i32 4
  store %struct.vge_hw_stats* %9, %struct.vge_hw_stats** %7, align 8
  %10 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %12)
  store %struct.sysctl_ctx_list* %13, %struct.sysctl_ctx_list** %3, align 8
  %14 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %16)
  %18 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  store %struct.sysctl_oid_list* %18, %struct.sysctl_oid_list** %4, align 8
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %20 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RW, align 4
  %23 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %24 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %23, i32 0, i32 3
  %25 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %19, %struct.sysctl_oid_list* %20, i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %24, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %27 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %28 = load i32, i32* @OID_AUTO, align 4
  %29 = load i32, i32* @CTLFLAG_RW, align 4
  %30 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %31 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %30, i32 0, i32 2
  %32 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %26, %struct.sysctl_oid_list* %27, i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32* %31, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %34 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RW, align 4
  %37 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %38 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %37, i32 0, i32 0
  %39 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %33, %struct.sysctl_oid_list* %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32* %38, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32, i32* @VGE_INT_HOLDOFF_DEFAULT, align 4
  %41 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %42 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %44 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @device_get_name(i32 %45)
  %47 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %48 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_get_unit(i32 %49)
  %51 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %52 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %51, i32 0, i32 3
  %53 = call i32 @resource_int_value(i32 %46, i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %52)
  %54 = load i32, i32* @VGE_RX_COAL_PKT_DEFAULT, align 4
  %55 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %56 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %58 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @device_get_name(i32 %59)
  %61 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %62 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_get_unit(i32 %63)
  %65 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %65, i32 0, i32 2
  %67 = call i32 @resource_int_value(i32 %60, i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %66)
  %68 = load i32, i32* @VGE_TX_COAL_PKT_DEFAULT, align 4
  %69 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %70 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %72 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @device_get_name(i32 %73)
  %75 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %76 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_get_unit(i32 %77)
  %79 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %80 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %79, i32 0, i32 0
  %81 = call i32 @resource_int_value(i32 %74, i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %80)
  %82 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %83 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %84 = load i32, i32* @OID_AUTO, align 4
  %85 = load i32, i32* @CTLFLAG_RD, align 4
  %86 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %82, %struct.sysctl_oid_list* %83, i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %85, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store %struct.sysctl_oid* %86, %struct.sysctl_oid** %6, align 8
  %87 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %88 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %87)
  store %struct.sysctl_oid_list* %88, %struct.sysctl_oid_list** %5, align 8
  %89 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %90 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLFLAG_RD, align 4
  %93 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %89, %struct.sysctl_oid_list* %90, i32 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %92, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  store %struct.sysctl_oid* %93, %struct.sysctl_oid** %6, align 8
  %94 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %95 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %94)
  store %struct.sysctl_oid_list* %95, %struct.sysctl_oid_list** %4, align 8
  %96 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %97 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %98 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %99 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %98, i32 0, i32 31
  %100 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %96, %struct.sysctl_oid_list* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %101 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %102 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %103 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %104 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %103, i32 0, i32 30
  %105 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %101, %struct.sysctl_oid_list* %102, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %106 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %107 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %108 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %109 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %108, i32 0, i32 29
  %110 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %106, %struct.sysctl_oid_list* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %111 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %112 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %113 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %114 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %113, i32 0, i32 28
  %115 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %111, %struct.sysctl_oid_list* %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %116 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %117 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %118 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %119 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %118, i32 0, i32 27
  %120 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %116, %struct.sysctl_oid_list* %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32* %119, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %121 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %122 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %123 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %124 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %123, i32 0, i32 26
  %125 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %121, %struct.sysctl_oid_list* %122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %126 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %127 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %128 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %129 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %128, i32 0, i32 25
  %130 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %126, %struct.sysctl_oid_list* %127, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  %131 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %132 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %133 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %134 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %133, i32 0, i32 24
  %135 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %131, %struct.sysctl_oid_list* %132, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32* %134, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %136 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %137 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %138 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %139 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %138, i32 0, i32 23
  %140 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %136, %struct.sysctl_oid_list* %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32* %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  %141 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %142 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %143 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %144 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %143, i32 0, i32 22
  %145 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %141, %struct.sysctl_oid_list* %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32* %144, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0))
  %146 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %147 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %148 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %149 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %148, i32 0, i32 21
  %150 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %146, %struct.sysctl_oid_list* %147, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32* %149, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
  %151 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %152 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %153 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %154 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %153, i32 0, i32 20
  %155 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %151, %struct.sysctl_oid_list* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0), i32* %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0))
  %156 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %157 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %158 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %159 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %158, i32 0, i32 19
  %160 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %156, %struct.sysctl_oid_list* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i32* %159, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0))
  %161 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %162 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %163 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %164 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %163, i32 0, i32 18
  %165 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %161, %struct.sysctl_oid_list* %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i32* %164, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0))
  %166 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %167 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %168 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %169 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %168, i32 0, i32 17
  %170 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %166, %struct.sysctl_oid_list* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i32* %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %171 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %172 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %173 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %174 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %173, i32 0, i32 16
  %175 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %171, %struct.sysctl_oid_list* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i32* %174, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %176 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %177 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %178 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %179 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %178, i32 0, i32 15
  %180 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %176, %struct.sysctl_oid_list* %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i32* %179, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i64 0, i64 0))
  %181 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %182 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %183 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %184 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %183, i32 0, i32 14
  %185 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %181, %struct.sysctl_oid_list* %182, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0), i32* %184, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0))
  %186 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %187 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %188 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %189 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %188, i32 0, i32 13
  %190 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %186, %struct.sysctl_oid_list* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0), i32* %189, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i64 0, i64 0))
  %191 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %192 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %193 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %194 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %193, i32 0, i32 12
  %195 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %191, %struct.sysctl_oid_list* %192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0), i32* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0))
  %196 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %197 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %198 = load i32, i32* @OID_AUTO, align 4
  %199 = load i32, i32* @CTLFLAG_RD, align 4
  %200 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %196, %struct.sysctl_oid_list* %197, i32 %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i64 0, i64 0), i32 %199, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i64 0, i64 0))
  store %struct.sysctl_oid* %200, %struct.sysctl_oid** %6, align 8
  %201 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %202 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %201)
  store %struct.sysctl_oid_list* %202, %struct.sysctl_oid_list** %4, align 8
  %203 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %204 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %205 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %206 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %205, i32 0, i32 11
  %207 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %203, %struct.sysctl_oid_list* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %206, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %208 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %209 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %210 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %211 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %210, i32 0, i32 10
  %212 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %208, %struct.sysctl_oid_list* %209, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32* %211, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %213 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %214 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %215 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %216 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %215, i32 0, i32 9
  %217 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %213, %struct.sysctl_oid_list* %214, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32* %216, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  %218 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %219 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %220 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %221 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %220, i32 0, i32 8
  %222 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %218, %struct.sysctl_oid_list* %219, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32* %221, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %223 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %224 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %225 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %226 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %225, i32 0, i32 7
  %227 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %223, %struct.sysctl_oid_list* %224, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32* %226, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0))
  %228 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %229 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %230 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %231 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %230, i32 0, i32 6
  %232 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %228, %struct.sysctl_oid_list* %229, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32* %231, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0))
  %233 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %234 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %235 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %236 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %235, i32 0, i32 5
  %237 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %233, %struct.sysctl_oid_list* %234, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32* %236, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
  %238 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %239 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %240 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %241 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %240, i32 0, i32 4
  %242 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %238, %struct.sysctl_oid_list* %239, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0), i32* %241, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0))
  %243 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %244 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %245 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %246 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %245, i32 0, i32 3
  %247 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %243, %struct.sysctl_oid_list* %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i32* %246, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0))
  %248 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %249 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %250 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %251 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %250, i32 0, i32 2
  %252 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %248, %struct.sysctl_oid_list* %249, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0), i32* %251, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.53, i64 0, i64 0))
  %253 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %254 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %255 = load %struct.vge_hw_stats*, %struct.vge_hw_stats** %7, align 8
  %256 = getelementptr inbounds %struct.vge_hw_stats, %struct.vge_hw_stats* %255, i32 0, i32 1
  %257 = call i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %253, %struct.sysctl_oid_list* %254, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0), i32* %256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i64 0, i64 0))
  %258 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %259 = call i32 @vge_stats_clear(%struct.vge_softc* %258)
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @VGE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

declare dso_local i32 @vge_stats_clear(%struct.vge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
