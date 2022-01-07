; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_sysctl_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_sysctl_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { i32, i32, %struct.ste_hw_stats }
%struct.ste_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"int_rx_mod\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ste RX interrupt moderation\00", align 1
@STE_IM_RX_TIMER_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"STE statistics\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Rx MAC statistics\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"good_octets\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Good octets\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"good_frames\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"Good frames\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"good_bcast_frames\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Good broadcast frames\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"good_mcast_frames\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Good multicast frames\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"lost_frames\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Lost frames\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Tx MAC statistics\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"carrier_errs\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"Carrier sense errors\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"single_colls\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Single collisions\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"multi_colls\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Multiple collisions\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"late_colls\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"Late collisions\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"defers\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Frames with deferrals\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"excess_defers\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Frames with excessive derferrals\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"Aborted frames due to Excessive collisions\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_sysctl_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_sysctl_node(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.sysctl_oid*, align 8
  %7 = alloca %struct.ste_hw_stats*, align 8
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %8 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %8, i32 0, i32 2
  store %struct.ste_hw_stats* %9, %struct.ste_hw_stats** %7, align 8
  %10 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %12)
  store %struct.sysctl_ctx_list* %13, %struct.sysctl_ctx_list** %3, align 8
  %14 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %15 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %16)
  %18 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %17)
  store %struct.sysctl_oid_list* %18, %struct.sysctl_oid_list** %4, align 8
  %19 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %20 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RW, align 4
  %23 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %23, i32 0, i32 0
  %25 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %19, %struct.sysctl_oid_list* %20, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22, i32* %24, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @STE_IM_RX_TIMER_DEFAULT, align 4
  %27 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_get_name(i32 %31)
  %33 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %34 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_get_unit(i32 %35)
  %37 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %38 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %37, i32 0, i32 0
  %39 = call i32 @resource_int_value(i32 %32, i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %38)
  %40 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %41 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLFLAG_RD, align 4
  %44 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %40, %struct.sysctl_oid_list* %41, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %43, i32* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sysctl_oid* %44, %struct.sysctl_oid** %6, align 8
  %45 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %46 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %45)
  store %struct.sysctl_oid_list* %46, %struct.sysctl_oid_list** %5, align 8
  %47 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %48 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %49 = load i32, i32* @OID_AUTO, align 4
  %50 = load i32, i32* @CTLFLAG_RD, align 4
  %51 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %47, %struct.sysctl_oid_list* %48, i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store %struct.sysctl_oid* %51, %struct.sysctl_oid** %6, align 8
  %52 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %53 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %52)
  store %struct.sysctl_oid_list* %53, %struct.sysctl_oid_list** %4, align 8
  %54 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %55 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %56 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %57 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %56, i32 0, i32 15
  %58 = call i32 @STE_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %54, %struct.sysctl_oid_list* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %59 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %60 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %61 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %62 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %61, i32 0, i32 14
  %63 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %59, %struct.sysctl_oid_list* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %64 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %65 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %66 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %67 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %66, i32 0, i32 13
  %68 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %64, %struct.sysctl_oid_list* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32* %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %69 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %70 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %71 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %72 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %71, i32 0, i32 12
  %73 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %69, %struct.sysctl_oid_list* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32* %72, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %74 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %75 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %76 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %77 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %76, i32 0, i32 11
  %78 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %74, %struct.sysctl_oid_list* %75, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %79 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %80 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %81 = load i32, i32* @OID_AUTO, align 4
  %82 = load i32, i32* @CTLFLAG_RD, align 4
  %83 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %79, %struct.sysctl_oid_list* %80, i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 %82, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  store %struct.sysctl_oid* %83, %struct.sysctl_oid** %6, align 8
  %84 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  %85 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %84)
  store %struct.sysctl_oid_list* %85, %struct.sysctl_oid_list** %4, align 8
  %86 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %87 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %88 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %89 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %88, i32 0, i32 10
  %90 = call i32 @STE_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list* %86, %struct.sysctl_oid_list* %87, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %91 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %92 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %93 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %94 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %93, i32 0, i32 9
  %95 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %91, %struct.sysctl_oid_list* %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %96 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %97 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %98 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %99 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %98, i32 0, i32 8
  %100 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %96, %struct.sysctl_oid_list* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %101 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %102 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %103 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %104 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %103, i32 0, i32 7
  %105 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %101, %struct.sysctl_oid_list* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %106 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %107 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %108 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %109 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %108, i32 0, i32 6
  %110 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %106, %struct.sysctl_oid_list* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %111 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %112 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %113 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %114 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %113, i32 0, i32 5
  %115 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %111, %struct.sysctl_oid_list* %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i32* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  %116 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %117 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %118 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %119 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %118, i32 0, i32 4
  %120 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %116, %struct.sysctl_oid_list* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32* %119, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  %121 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %122 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %123 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %124 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %123, i32 0, i32 3
  %125 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %121, %struct.sysctl_oid_list* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0), i32* %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  %126 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %127 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %128 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %129 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %128, i32 0, i32 2
  %130 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %126, %struct.sysctl_oid_list* %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32* %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  %131 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %132 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %133 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %134 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %133, i32 0, i32 1
  %135 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %131, %struct.sysctl_oid_list* %132, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0))
  %136 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %137 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %4, align 8
  %138 = load %struct.ste_hw_stats*, %struct.ste_hw_stats** %7, align 8
  %139 = getelementptr inbounds %struct.ste_hw_stats, %struct.ste_hw_stats* %138, i32 0, i32 0
  %140 = call i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list* %136, %struct.sysctl_oid_list* %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32* %139, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0))
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

declare dso_local i32 @STE_SYSCTL_STAT_ADD64(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

declare dso_local i32 @STE_SYSCTL_STAT_ADD32(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
