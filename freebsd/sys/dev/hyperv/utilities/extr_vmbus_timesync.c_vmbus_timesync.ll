; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_timesync.c_vmbus_timesync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/utilities/extr_vmbus_timesync.c_vmbus_timesync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_ic_softc = type { i32 }
%struct.timespec = type { i32, i32 }

@VMBUS_ICMSG_TS_BASE = common dso_local global i32 0, align 4
@HYPERV_TIMER_NS_FACTOR = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4
@VMBUS_ICMSG_TS_FLAG_SYNC = common dso_local global i32 0, align 4
@vmbus_ts_ignore_sync = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"apply sync request, hv: %ju, vm: %ju\0A\00", align 1
@curthread = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@VMBUS_ICMSG_TS_FLAG_SAMPLE = common dso_local global i32 0, align 4
@vmbus_ts_sample_thresh = common dso_local global i32 0, align 4
@vmbus_ts_sample_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"sample request, hv: %ju, vm: %ju\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"apply sample request, hv: %ju, vm: %ju\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_ic_softc*, i32, i32, i32)* @vmbus_timesync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_timesync(%struct.vmbus_ic_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vmbus_ic_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.timespec, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timespec, align 4
  store %struct.vmbus_ic_softc* %0, %struct.vmbus_ic_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %17 = call i64 @VMBUS_TIMESYNC_DORTT(%struct.vmbus_ic_softc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = call i32 (...) @hyperv_tc64()
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %20, %21
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @VMBUS_ICMSG_TS_BASE, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @HYPERV_TIMER_NS_FACTOR, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %10, align 4
  %31 = call i32 @nanotime(%struct.timespec* %9)
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NANOSEC, align 4
  %35 = mul nsw i32 %33, %34
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %35, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @VMBUS_ICMSG_TS_FLAG_SYNC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %23
  %44 = load i32, i32* @vmbus_ts_ignore_sync, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* @bootverbose, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %51 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @NANOSEC, align 4
  %59 = sdiv i32 %57, %58
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @NANOSEC, align 4
  %63 = srem i32 %61, %62
  %64 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @curthread, align 4
  %66 = load i32, i32* @CLOCK_REALTIME, align 4
  %67 = call i32 @kern_clock_settime(i32 %65, i32 %66, %struct.timespec* %13)
  br label %127

68:                                               ; preds = %43, %23
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @VMBUS_ICMSG_TS_FLAG_SAMPLE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %127

73:                                               ; preds = %68
  %74 = load i32, i32* @vmbus_ts_sample_thresh, align 4
  %75 = icmp sge i32 %74, 0
  br i1 %75, label %76, label %127

76:                                               ; preds = %73
  %77 = load i64, i64* @vmbus_ts_sample_verbose, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %81 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %79, %76
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %14, align 4
  br label %98

94:                                               ; preds = %86
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %14, align 4
  %100 = sdiv i32 %99, 1000000
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @vmbus_ts_sample_thresh, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %126

104:                                              ; preds = %98
  %105 = load i64, i64* @bootverbose, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.vmbus_ic_softc*, %struct.vmbus_ic_softc** %5, align 8
  %109 = getelementptr inbounds %struct.vmbus_ic_softc, %struct.vmbus_ic_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %104
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @NANOSEC, align 4
  %117 = sdiv i32 %115, %116
  %118 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @NANOSEC, align 4
  %121 = srem i32 %119, %120
  %122 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* @curthread, align 4
  %124 = load i32, i32* @CLOCK_REALTIME, align 4
  %125 = call i32 @kern_clock_settime(i32 %123, i32 %124, %struct.timespec* %15)
  br label %126

126:                                              ; preds = %114, %98
  br label %127

127:                                              ; preds = %56, %126, %73, %68
  ret void
}

declare dso_local i64 @VMBUS_TIMESYNC_DORTT(%struct.vmbus_ic_softc*) #1

declare dso_local i32 @hyperv_tc64(...) #1

declare dso_local i32 @nanotime(%struct.timespec*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @kern_clock_settime(i32, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
