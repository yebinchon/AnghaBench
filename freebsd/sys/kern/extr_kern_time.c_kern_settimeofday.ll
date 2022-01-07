; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_settimeofday.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_settimeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.timezone = type { i32 }

@PRIV_SETTIMEOFDAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_settimeofday(%struct.thread* %0, %struct.timeval* %1, %struct.timezone* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.timezone*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store %struct.timezone* %2, %struct.timezone** %7, align 8
  %9 = load %struct.thread*, %struct.thread** %5, align 8
  %10 = load i32, i32* @PRIV_SETTIMEOFDAY, align 4
  %11 = call i32 @priv_check(%struct.thread* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.timeval*, %struct.timeval** %6, align 8
  %18 = icmp ne %struct.timeval* %17, null
  br i1 %18, label %19, label %40

19:                                               ; preds = %16
  %20 = load %struct.timeval*, %struct.timeval** %6, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.timeval*, %struct.timeval** %6, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 1000000
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.timeval*, %struct.timeval** %6, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %24, %19
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %42

36:                                               ; preds = %29
  %37 = load %struct.thread*, %struct.thread** %5, align 8
  %38 = load %struct.timeval*, %struct.timeval** %6, align 8
  %39 = call i32 @settime(%struct.thread* %37, %struct.timeval* %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %36, %16
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %34, %14
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @settime(%struct.thread*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
