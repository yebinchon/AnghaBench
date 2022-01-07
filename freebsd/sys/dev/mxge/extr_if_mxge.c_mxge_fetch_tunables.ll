; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_fetch_tunables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_fetch_tunables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"hw.mxge.max_slices\00", align 1
@mxge_max_slices = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"hw.mxge.flow_control_enabled\00", align 1
@mxge_flow_control = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"hw.mxge.intr_coal_delay\00", align 1
@mxge_intr_coal_delay = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"hw.mxge.nvidia_ecrc_enable\00", align 1
@mxge_nvidia_ecrc_enable = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"hw.mxge.force_firmware\00", align 1
@mxge_force_firmware = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"hw.mxge.deassert_wait\00", align 1
@mxge_deassert_wait = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"hw.mxge.verbose\00", align 1
@mxge_verbose = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"hw.mxge.ticks\00", align 1
@mxge_ticks = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"hw.mxge.always_promisc\00", align 1
@mxge_always_promisc = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"hw.mxge.rss_hash_type\00", align 1
@mxge_rss_hash_type = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"hw.mxge.rss_hashtype\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"hw.mxge.initial_mtu\00", align 1
@mxge_initial_mtu = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [17 x i8] c"hw.mxge.throttle\00", align 1
@mxge_throttle = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@MXGEFW_RSS_HASH_TYPE_IPV4 = common dso_local global i64 0, align 8
@MXGEFW_RSS_HASH_TYPE_MAX = common dso_local global i64 0, align 8
@MXGEFW_RSS_HASH_TYPE_SRC_DST_PORT = common dso_local global i64 0, align 8
@ETHERMTU_JUMBO = common dso_local global i64 0, align 8
@ETHER_MIN_LEN = common dso_local global i64 0, align 8
@MXGE_MAX_THROTTLE = common dso_local global i64 0, align 8
@MXGE_MIN_THROTTLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @mxge_fetch_tunables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxge_fetch_tunables(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* @mxge_max_slices)
  %4 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64* @mxge_flow_control)
  %5 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* @mxge_intr_coal_delay)
  %6 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64* @mxge_nvidia_ecrc_enable)
  %7 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64* @mxge_force_firmware)
  %8 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64* @mxge_deassert_wait)
  %9 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64* @mxge_verbose)
  %10 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* @mxge_ticks)
  %11 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64* @mxge_always_promisc)
  %12 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i64* @mxge_rss_hash_type)
  %13 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i64* @mxge_rss_hash_type)
  %14 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i64* @mxge_initial_mtu)
  %15 = call i32 (i8*, ...) @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i64* @mxge_throttle)
  %16 = load i64, i64* @bootverbose, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i64 1, i64* @mxge_verbose, align 8
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @mxge_intr_coal_delay, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @mxge_intr_coal_delay, align 4
  %24 = icmp sgt i32 %23, 10000
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19
  store i32 30, i32* @mxge_intr_coal_delay, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i64, i64* @mxge_ticks, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @hz, align 4
  %31 = sdiv i32 %30, 2
  %32 = sext i32 %31 to i64
  store i64 %32, i64* @mxge_ticks, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i64, i64* @mxge_flow_control, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* @mxge_rss_hash_type, align 8
  %38 = load i64, i64* @MXGEFW_RSS_HASH_TYPE_IPV4, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* @mxge_rss_hash_type, align 8
  %42 = load i64, i64* @MXGEFW_RSS_HASH_TYPE_MAX, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %33
  %45 = load i64, i64* @MXGEFW_RSS_HASH_TYPE_SRC_DST_PORT, align 8
  store i64 %45, i64* @mxge_rss_hash_type, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i64, i64* @mxge_initial_mtu, align 8
  %48 = load i64, i64* @ETHERMTU_JUMBO, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* @mxge_initial_mtu, align 8
  %52 = load i64, i64* @ETHER_MIN_LEN, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46
  %55 = load i64, i64* @ETHERMTU_JUMBO, align 8
  store i64 %55, i64* @mxge_initial_mtu, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64, i64* @mxge_throttle, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i64, i64* @mxge_throttle, align 8
  %61 = load i64, i64* @MXGE_MAX_THROTTLE, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* @MXGE_MAX_THROTTLE, align 8
  store i64 %64, i64* @mxge_throttle, align 8
  br label %65

65:                                               ; preds = %63, %59, %56
  %66 = load i64, i64* @mxge_throttle, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i64, i64* @mxge_throttle, align 8
  %70 = load i64, i64* @MXGE_MIN_THROTTLE, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i64, i64* @MXGE_MIN_THROTTLE, align 8
  store i64 %73, i64* @mxge_throttle, align 8
  br label %74

74:                                               ; preds = %72, %68, %65
  %75 = load i64, i64* @mxge_throttle, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
