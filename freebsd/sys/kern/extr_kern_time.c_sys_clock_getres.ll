; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_clock_getres.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_sys_clock_getres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.clock_getres_args = type { i32*, i32 }
%struct.timespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_clock_getres(%struct.thread* %0, %struct.clock_getres_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.clock_getres_args*, align 8
  %6 = alloca %struct.timespec, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.clock_getres_args* %1, %struct.clock_getres_args** %5, align 8
  %8 = load %struct.clock_getres_args*, %struct.clock_getres_args** %5, align 8
  %9 = getelementptr inbounds %struct.clock_getres_args, %struct.clock_getres_args* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.thread*, %struct.thread** %4, align 8
  %15 = load %struct.clock_getres_args*, %struct.clock_getres_args** %5, align 8
  %16 = getelementptr inbounds %struct.clock_getres_args, %struct.clock_getres_args* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kern_clock_getres(%struct.thread* %14, i32 %17, %struct.timespec* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.clock_getres_args*, %struct.clock_getres_args** %5, align 8
  %23 = getelementptr inbounds %struct.clock_getres_args, %struct.clock_getres_args* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @copyout(%struct.timespec* %6, i32* %24, i32 4)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %21, %13
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @kern_clock_getres(%struct.thread*, i32, %struct.timespec*) #1

declare dso_local i32 @copyout(%struct.timespec*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
