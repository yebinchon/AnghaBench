; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/syscall_timing/extr_syscall_timing.c_benchmark_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/syscall_timing/extr_syscall_timing.c_benchmark_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alarm_fired = common dso_local global i64 0, align 8
@alarm_timeout = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@alarm_handler = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@ts_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @benchmark_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @benchmark_start() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @alarm_fired, align 8
  %2 = load i64, i64* @alarm_timeout, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* @SIGALRM, align 4
  %6 = load i32, i32* @alarm_handler, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  %8 = load i64, i64* @alarm_timeout, align 8
  %9 = call i32 @alarm(i64 %8)
  br label %10

10:                                               ; preds = %4, %0
  %11 = load i32, i32* @CLOCK_REALTIME, align 4
  %12 = call i32 @clock_gettime(i32 %11, i32* @ts_start)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @alarm(i64) #1

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
