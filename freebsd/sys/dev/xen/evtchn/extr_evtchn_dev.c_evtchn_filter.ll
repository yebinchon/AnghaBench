; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/evtchn/extr_evtchn_dev.c_evtchn_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_evtchn = type { i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@evtchn_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Received upcall for disabled event channel %d\0A\00", align 1
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @evtchn_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.user_evtchn*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.user_evtchn*
  store %struct.user_evtchn* %5, %struct.user_evtchn** %3, align 8
  %6 = load %struct.user_evtchn*, %struct.user_evtchn** %3, align 8
  %7 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @bootverbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load i32, i32* @evtchn_dev, align 4
  %15 = load %struct.user_evtchn*, %struct.user_evtchn** %3, align 8
  %16 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %10, %1
  %20 = load %struct.user_evtchn*, %struct.user_evtchn** %3, align 8
  %21 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @evtchn_mask_port(i32 %22)
  %24 = load %struct.user_evtchn*, %struct.user_evtchn** %3, align 8
  %25 = getelementptr inbounds %struct.user_evtchn, %struct.user_evtchn* %24, i32 0, i32 0
  store i32 0, i32* %25, align 4
  %26 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  ret i32 %26
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @evtchn_mask_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
