; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_wait_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_at45d.c_at45d_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @at45d_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at45d_wait_ready(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = call i32 @getmicrouptime(%struct.timeval* %6)
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 3
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %36, %2
  %13 = call i32 @getmicrouptime(%struct.timeval* %5)
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %20, i32* %7, align 4
  br label %25

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @at45d_get_status(i32 %22, i32* %23)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %19
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @STATUS_READY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %29, %26
  %37 = phi i1 [ false, %26 ], [ %35, %29 ]
  br i1 %37, label %12, label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @getmicrouptime(%struct.timeval*) #1

declare dso_local i32 @at45d_get_status(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
