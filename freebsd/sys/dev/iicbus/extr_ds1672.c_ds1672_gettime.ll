; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@DS1672_COUNTER = common dso_local global i32 0, align 4
@CLOCK_DBG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @ds1672_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1672_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DS1672_COUNTER, align 4
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %10 = call i32 @ds1672_read(i32 %7, i32 %8, i32* %9, i32 4)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 24
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 16
  %20 = or i32 %16, %19
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %20, %23
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %26 = load i32, i32* %25, align 16
  %27 = shl i32 %26, 0
  %28 = or i32 %24, %27
  %29 = load %struct.timespec*, %struct.timespec** %4, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.timespec*, %struct.timespec** %4, align 8
  %32 = getelementptr inbounds %struct.timespec, %struct.timespec* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %13, %2
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CLOCK_DBG_READ, align 4
  %36 = load %struct.timespec*, %struct.timespec** %4, align 8
  %37 = call i32 @clock_dbgprint_ts(i32 %34, i32 %35, %struct.timespec* %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @ds1672_read(i32, i32, i32*, i32) #1

declare dso_local i32 @clock_dbgprint_ts(i32, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
