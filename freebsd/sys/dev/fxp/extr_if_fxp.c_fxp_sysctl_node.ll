; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i64, %struct.fxp_hwstats, i64, i32, i32, i32 }
%struct.fxp_hwstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"int_delay\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_hw_fxp_int_delay = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"FXP driver receive interrupt microcode bundling delay\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"bundle_max\00", align 1
@sysctl_hw_fxp_bundle_max = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"FXP driver receive interrupt microcode bundle size limit\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"rnr\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"FXP RNR events\00", align 1
@TUNABLE_INT_DELAY = common dso_local global i32 0, align 4
@TUNABLE_BUNDLE_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"FXP statistics\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Rx MAC statistics\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"good_frames\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Good frames\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"crc_errors\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"CRC errors\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"alignment_errors\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Alignment errors\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"rnr_errors\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"RNR errors\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"overrun_errors\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"Overrun errors\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"cdt_errors\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"Collision detect errors\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"shortframes\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"Short frame errors\00", align 1
@FXP_REV_82558_A4 = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [6 x i8] c"pause\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Pause frames\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"controls\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Unsupported control frames\00", align 1
@FXP_REV_82559_A0 = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [4 x i8] c"tco\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"TCO frames\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Tx MAC statistics\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"maxcols\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"Maximum collisions errors\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"latecols\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"Late collisions errors\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"underruns\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"Underrun errors\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"lostcrs\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"Lost carrier sense\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"deffered\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"Deferred\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"single_collisions\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"Single collisions\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"multiple_collisions\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Multiple collisions\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"total_collisions\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"Total collisions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*)* @fxp_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_sysctl_node(%struct.fxp_softc* %0) #0 {
  %2 = alloca %struct.fxp_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.fxp_hwstats*, align 8
  store %struct.fxp_softc* %0, %struct.fxp_softc** %2, align 8
  %8 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %9 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %10)
  store %struct.sysctl_ctx_list* %11, %struct.sysctl_ctx_list** %3, align 8
  %12 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %13 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %14)
  %16 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %15)
  store %struct.sysctl_oid_list* %16, %struct.sysctl_oid_list** %4, align 8
  %17 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %18 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %19 = load i32, i32* @OID_AUTO, align 4
  %20 = load i32, i32* @CTLTYPE_INT, align 4
  %21 = load i32, i32* @CTLFLAG_RW, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %24 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %23, i32 0, i32 5
  %25 = load i32, i32* @sysctl_hw_fxp_int_delay, align 4
  %26 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %17, %struct.sysctl_oid_list* %18, i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %24, i32 0, i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %28 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %29 = load i32, i32* @OID_AUTO, align 4
  %30 = load i32, i32* @CTLTYPE_INT, align 4
  %31 = load i32, i32* @CTLFLAG_RW, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %34 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %33, i32 0, i32 3
  %35 = load i32, i32* @sysctl_hw_fxp_bundle_max, align 4
  %36 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %27, %struct.sysctl_oid_list* %28, i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32* %34, i32 0, i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %38 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLFLAG_RD, align 4
  %41 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %42 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %41, i32 0, i32 2
  %43 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %37, %struct.sysctl_oid_list* %38, i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %40, i64* %42, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i32, i32* @TUNABLE_INT_DELAY, align 4
  %45 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %46 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @TUNABLE_BUNDLE_MAX, align 4
  %48 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %49 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %51 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_get_name(i32 %52)
  %54 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %55 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_get_unit(i32 %56)
  %58 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %59 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %58, i32 0, i32 5
  %60 = call i32 @resource_int_value(i32 %53, i32 %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %59)
  %61 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %62 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_get_name(i32 %63)
  %65 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %66 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_get_unit(i32 %67)
  %69 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %70 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %69, i32 0, i32 3
  %71 = call i32 @resource_int_value(i32 %64, i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %70)
  %72 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %73 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %75 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %74, i32 0, i32 1
  store %struct.fxp_hwstats* %75, %struct.fxp_hwstats** %7, align 8
  %76 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %77 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLFLAG_RD, align 4
  %80 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %76, %struct.sysctl_oid_list* %77, i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %79, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store %struct.sysctl_oid* %80, %struct.sysctl_oid** %6, align 8
  %81 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %82 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %81)
  store %struct.sysctl_oid_list* %82, %struct.sysctl_oid_list** %5, align 8
  %83 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %84 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %85 = load i32, i32* @OID_AUTO, align 4
  %86 = load i32, i32* @CTLFLAG_RD, align 4
  %87 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %83, %struct.sysctl_oid_list* %84, i32 %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %86, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  store %struct.sysctl_oid* %87, %struct.sysctl_oid** %6, align 8
  %88 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %89 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %88)
  store %struct.sysctl_oid_list* %89, %struct.sysctl_oid_list** %4, align 8
  %90 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %91 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %92 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %93 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %92, i32 0, i32 20
  %94 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %90, %struct.sysctl_oid_list* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %95 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %96 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %97 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %98 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %97, i32 0, i32 19
  %99 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %95, %struct.sysctl_oid_list* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32* %98, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %100 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %101 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %102 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %103 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %102, i32 0, i32 18
  %104 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %100, %struct.sysctl_oid_list* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32* %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %105 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %106 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %107 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %108 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %107, i32 0, i32 17
  %109 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %105, %struct.sysctl_oid_list* %106, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), i32* %108, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0))
  %110 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %111 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %112 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %113 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %112, i32 0, i32 16
  %114 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %110, %struct.sysctl_oid_list* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %115 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %116 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %117 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %118 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %117, i32 0, i32 15
  %119 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %115, %struct.sysctl_oid_list* %116, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0))
  %120 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %121 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %122 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %123 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %122, i32 0, i32 14
  %124 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %120, %struct.sysctl_oid_list* %121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %125 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %126 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @FXP_REV_82558_A4, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %1
  %131 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %132 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %133 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %134 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %133, i32 0, i32 13
  %135 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %131, %struct.sysctl_oid_list* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32* %134, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %136 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %137 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %138 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %139 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %138, i32 0, i32 12
  %140 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %136, %struct.sysctl_oid_list* %137, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32* %139, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  br label %141

141:                                              ; preds = %130, %1
  %142 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %143 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @FXP_REV_82559_A0, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %149 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %150 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %151 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %150, i32 0, i32 11
  %152 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %148, %struct.sysctl_oid_list* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32* %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  br label %153

153:                                              ; preds = %147, %141
  %154 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %155 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %156 = load i32, i32* @OID_AUTO, align 4
  %157 = load i32, i32* @CTLFLAG_RD, align 4
  %158 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %154, %struct.sysctl_oid_list* %155, i32 %156, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i32 %157, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0))
  store %struct.sysctl_oid* %158, %struct.sysctl_oid** %6, align 8
  %159 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %160 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %159)
  store %struct.sysctl_oid_list* %160, %struct.sysctl_oid_list** %4, align 8
  %161 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %162 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %163 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %164 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %163, i32 0, i32 10
  %165 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %161, %struct.sysctl_oid_list* %162, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32* %164, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %166 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %167 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %168 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %169 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %168, i32 0, i32 9
  %170 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %166, %struct.sysctl_oid_list* %167, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i32* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0))
  %171 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %172 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %173 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %174 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %173, i32 0, i32 8
  %175 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %171, %struct.sysctl_oid_list* %172, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0), i32* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0))
  %176 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %177 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %178 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %179 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %178, i32 0, i32 7
  %180 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %176, %struct.sysctl_oid_list* %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i32* %179, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0))
  %181 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %182 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %183 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %184 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %183, i32 0, i32 6
  %185 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %181, %struct.sysctl_oid_list* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i32* %184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.40, i64 0, i64 0))
  %186 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %187 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %188 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %189 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %188, i32 0, i32 5
  %190 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %186, %struct.sysctl_oid_list* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i32* %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0))
  %191 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %192 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %193 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %194 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %193, i32 0, i32 4
  %195 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %191, %struct.sysctl_oid_list* %192, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0), i32* %194, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i64 0, i64 0))
  %196 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %197 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %198 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %199 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %198, i32 0, i32 3
  %200 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %196, %struct.sysctl_oid_list* %197, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i32* %199, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i64 0, i64 0))
  %201 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %202 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %203 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %204 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %203, i32 0, i32 2
  %205 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %201, %struct.sysctl_oid_list* %202, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i32* %204, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0))
  %206 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %207 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @FXP_REV_82558_A4, align 8
  %210 = icmp sge i64 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %153
  %212 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %213 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %214 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %215 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %214, i32 0, i32 1
  %216 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %212, %struct.sysctl_oid_list* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32* %215, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  br label %217

217:                                              ; preds = %211, %153
  %218 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %219 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @FXP_REV_82559_A0, align 8
  %222 = icmp sge i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %217
  %224 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %225 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %226 = load %struct.fxp_hwstats*, %struct.fxp_hwstats** %7, align 8
  %227 = getelementptr inbounds %struct.fxp_hwstats, %struct.fxp_hwstats* %226, i32 0, i32 0
  %228 = call i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list* %224, %struct.sysctl_oid_list* %225, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32* %227, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  br label %229

229:                                              ; preds = %223, %217
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i64*, i32, i8*) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @FXP_SYSCTL_STAT_ADD(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
