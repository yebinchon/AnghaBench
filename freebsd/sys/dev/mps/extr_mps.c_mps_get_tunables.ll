; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_get_tunables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_get_tunables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@MPS_INFO = common dso_local global i32 0, align 4
@MPS_FAULT = common dso_local global i32 0, align 4
@MPS_MSIX_MAX = common dso_local global i32 0, align 4
@MPS_CHAIN_FRAMES = common dso_local global i32 0, align 4
@MPS_MAXIO_PAGES = common dso_local global i32 0, align 4
@MPS_SSU_ENABLE_SSD_DISABLE_HDD = common dso_local global i32 0, align 4
@DEFAULT_SPINUP_WAIT = common dso_local global i32 0, align 4
@MPS_REQ_FRAMES = common dso_local global i32 0, align 4
@MPS_PRI_REQ_FRAMES = common dso_local global i32 0, align 4
@MPS_REPLY_FRAMES = common dso_local global i32 0, align 4
@MPS_EVT_REPLY_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"hw.mps.debug_level\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"hw.mps.disable_msix\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"hw.mps.disable_msi\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"hw.mps.max_msix\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"hw.mps.max_chains\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"hw.mps.max_io_pages\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"hw.mps.enable_ssu\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"hw.mps.spinup_wait_time\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"hw.mps.use_phy_num\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"hw.mps.max_reqframes\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"hw.mps.max_prireqframes\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"hw.mps.max_replyframes\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"hw.mps.max_evtframes\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"dev.mps.%d.debug_level\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"dev.mps.%d.disable_msix\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"dev.mps.%d.disable_msi\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"dev.mps.%d.max_msix\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"dev.mps.%d.max_chains\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"dev.mps.%d.max_io_pages\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"dev.mps.%d.exclude_ids\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"dev.mps.%d.enable_ssu\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"dev.mps.%d.spinup_wait_time\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"dev.mps.%d.use_phy_num\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"dev.mps.%d.max_reqframes\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"dev.mps.%d.max_prireqframes\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"dev.mps.%d.max_replyframes\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"dev.mps.%d.max_evtframes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mps_get_tunables(%struct.mps_softc* %0) #0 {
  %2 = alloca %struct.mps_softc*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca [80 x i8], align 16
  store %struct.mps_softc* %0, %struct.mps_softc** %2, align 8
  %5 = load i32, i32* @MPS_INFO, align 4
  %6 = load i32, i32* @MPS_FAULT, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %11 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %12, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* @MPS_MSIX_MAX, align 4
  %15 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @MPS_CHAIN_FRAMES, align 4
  %18 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @MPS_MAXIO_PAGES, align 4
  %21 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %22 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @MPS_SSU_ENABLE_SSD_DISABLE_HDD, align 4
  %24 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @DEFAULT_SPINUP_WAIT, align 4
  %27 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %29, i32 0, i32 8
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @MPS_REQ_FRAMES, align 4
  %32 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %33 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %32, i32 0, i32 9
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @MPS_PRI_REQ_FRAMES, align 4
  %35 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @MPS_REPLY_FRAMES, align 4
  %38 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %39 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @MPS_EVT_REPLY_FRAMES, align 4
  %41 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %42 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %44 = call i32 @bzero(i8* %43, i32 80)
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %46 = call i64 @TUNABLE_STR_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %45, i32 80)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %1
  %49 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %51 = call i32 @mps_parse_debug(%struct.mps_softc* %49, i8* %50)
  br label %52

52:                                               ; preds = %48, %1
  %53 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %53, i32 0, i32 1
  %55 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  %56 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %57 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %56, i32 0, i32 2
  %58 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %57)
  %59 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %60 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %59, i32 0, i32 3
  %61 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %60)
  %62 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %63 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %62, i32 0, i32 4
  %64 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %63)
  %65 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %66 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %65, i32 0, i32 5
  %67 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %66)
  %68 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %69 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %68, i32 0, i32 6
  %70 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %69)
  %71 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %72 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %71, i32 0, i32 7
  %73 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32* %72)
  %74 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %75 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %74, i32 0, i32 8
  %76 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32* %75)
  %77 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %78 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %77, i32 0, i32 9
  %79 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %78)
  %80 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %81 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %80, i32 0, i32 10
  %82 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32* %81)
  %83 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %84 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %83, i32 0, i32 11
  %85 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32* %84)
  %86 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %86, i32 0, i32 12
  %88 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32* %87)
  %89 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %90 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %91 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %90, i32 0, i32 14
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @device_get_unit(i32 %92)
  %94 = call i32 @snprintf(i8* %89, i32 80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %93)
  %95 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %96 = call i32 @bzero(i8* %95, i32 80)
  %97 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %98 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %99 = call i64 @TUNABLE_STR_FETCH(i8* %97, i8* %98, i32 80)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %52
  %102 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %103 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %104 = call i32 @mps_parse_debug(%struct.mps_softc* %102, i8* %103)
  br label %105

105:                                              ; preds = %101, %52
  %106 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %107 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %108 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %107, i32 0, i32 14
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @device_get_unit(i32 %109)
  %111 = call i32 @snprintf(i8* %106, i32 80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %110)
  %112 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %113 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %114 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %113, i32 0, i32 1
  %115 = call i32 @TUNABLE_INT_FETCH(i8* %112, i32* %114)
  %116 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %117 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %118 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %117, i32 0, i32 14
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @device_get_unit(i32 %119)
  %121 = call i32 @snprintf(i8* %116, i32 80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %120)
  %122 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %123 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %124 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %123, i32 0, i32 2
  %125 = call i32 @TUNABLE_INT_FETCH(i8* %122, i32* %124)
  %126 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %127 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %128 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %127, i32 0, i32 14
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @device_get_unit(i32 %129)
  %131 = call i32 @snprintf(i8* %126, i32 80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %130)
  %132 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %133 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %134 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %133, i32 0, i32 3
  %135 = call i32 @TUNABLE_INT_FETCH(i8* %132, i32* %134)
  %136 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %137 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %138 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %137, i32 0, i32 14
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @device_get_unit(i32 %139)
  %141 = call i32 @snprintf(i8* %136, i32 80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %140)
  %142 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %143 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %144 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %143, i32 0, i32 4
  %145 = call i32 @TUNABLE_INT_FETCH(i8* %142, i32* %144)
  %146 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %147 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %148 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %147, i32 0, i32 14
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @device_get_unit(i32 %149)
  %151 = call i32 @snprintf(i8* %146, i32 80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %150)
  %152 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %153 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %154 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %153, i32 0, i32 5
  %155 = call i32 @TUNABLE_INT_FETCH(i8* %152, i32* %154)
  %156 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %157 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %156, i32 0, i32 13
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @bzero(i8* %158, i32 8)
  %160 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %161 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %162 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %161, i32 0, i32 14
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @device_get_unit(i32 %163)
  %165 = call i32 @snprintf(i8* %160, i32 80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %164)
  %166 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %167 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %168 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %167, i32 0, i32 13
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @TUNABLE_STR_FETCH(i8* %166, i8* %169, i32 8)
  %171 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %172 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %173 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %172, i32 0, i32 14
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @device_get_unit(i32 %174)
  %176 = call i32 @snprintf(i8* %171, i32 80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %175)
  %177 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %178 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %179 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %178, i32 0, i32 6
  %180 = call i32 @TUNABLE_INT_FETCH(i8* %177, i32* %179)
  %181 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %182 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %183 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %182, i32 0, i32 14
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @device_get_unit(i32 %184)
  %186 = call i32 @snprintf(i8* %181, i32 80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %185)
  %187 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %188 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %189 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %188, i32 0, i32 7
  %190 = call i32 @TUNABLE_INT_FETCH(i8* %187, i32* %189)
  %191 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %192 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %193 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %192, i32 0, i32 14
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @device_get_unit(i32 %194)
  %196 = call i32 @snprintf(i8* %191, i32 80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %195)
  %197 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %198 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %199 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %198, i32 0, i32 8
  %200 = call i32 @TUNABLE_INT_FETCH(i8* %197, i32* %199)
  %201 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %202 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %203 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %202, i32 0, i32 14
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @device_get_unit(i32 %204)
  %206 = call i32 @snprintf(i8* %201, i32 80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %205)
  %207 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %208 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %209 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %208, i32 0, i32 9
  %210 = call i32 @TUNABLE_INT_FETCH(i8* %207, i32* %209)
  %211 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %212 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %213 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %212, i32 0, i32 14
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @device_get_unit(i32 %214)
  %216 = call i32 @snprintf(i8* %211, i32 80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i32 %215)
  %217 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %218 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %219 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %218, i32 0, i32 10
  %220 = call i32 @TUNABLE_INT_FETCH(i8* %217, i32* %219)
  %221 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %222 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %223 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %222, i32 0, i32 14
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @device_get_unit(i32 %224)
  %226 = call i32 @snprintf(i8* %221, i32 80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0), i32 %225)
  %227 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %228 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %229 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %228, i32 0, i32 11
  %230 = call i32 @TUNABLE_INT_FETCH(i8* %227, i32* %229)
  %231 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %232 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %233 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %232, i32 0, i32 14
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @device_get_unit(i32 %234)
  %236 = call i32 @snprintf(i8* %231, i32 80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %235)
  %237 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %238 = load %struct.mps_softc*, %struct.mps_softc** %2, align 8
  %239 = getelementptr inbounds %struct.mps_softc, %struct.mps_softc* %238, i32 0, i32 12
  %240 = call i32 @TUNABLE_INT_FETCH(i8* %237, i32* %239)
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i64 @TUNABLE_STR_FETCH(i8*, i8*, i32) #1

declare dso_local i32 @mps_parse_debug(%struct.mps_softc*, i8*) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
