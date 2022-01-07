; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }

@.str = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @cp_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_watchdog(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = call i32 @CP_DEBUG(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cp_stop_chan(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @cp_stop_e1(i32 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cp_start_e1(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cp_start_chan(i32 %24, i32 1, i32 1, i32 0, i32 0)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cp_set_dtr(i32 %28, i32 1)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cp_set_rts(i32 %32, i32 1)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = call i32 @cp_start(%struct.TYPE_5__* %34)
  br label %36

36:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @CP_DEBUG(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @cp_stop_chan(i32) #1

declare dso_local i32 @cp_stop_e1(i32) #1

declare dso_local i32 @cp_start_e1(i32) #1

declare dso_local i32 @cp_start_chan(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cp_set_dtr(i32, i32) #1

declare dso_local i32 @cp_set_rts(i32, i32) #1

declare dso_local i32 @cp_start(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
