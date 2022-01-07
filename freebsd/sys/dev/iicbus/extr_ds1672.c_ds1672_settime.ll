; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1672.c_ds1672_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@CLOCK_DBG_WRITE = common dso_local global i32 0, align 4
@DS1672_COUNTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @ds1672_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1672_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca [4 x i32], align 16
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %6 = load %struct.timespec*, %struct.timespec** %4, align 8
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = ashr i32 %8, 0
  %10 = and i32 %9, 255
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %10, i32* %11, align 16
  %12 = load %struct.timespec*, %struct.timespec** %4, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.timespec*, %struct.timespec** %4, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load %struct.timespec*, %struct.timespec** %4, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %26, 24
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.timespec*, %struct.timespec** %4, align 8
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @CLOCK_DBG_WRITE, align 4
  %34 = load %struct.timespec*, %struct.timespec** %4, align 8
  %35 = call i32 @clock_dbgprint_ts(i32 %32, i32 %33, %struct.timespec* %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @DS1672_COUNTER, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %39 = call i32 @ds1672_write(i32 %36, i32 %37, i32* %38, i32 4)
  ret i32 %39
}

declare dso_local i32 @clock_dbgprint_ts(i32, i32, %struct.timespec*) #1

declare dso_local i32 @ds1672_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
