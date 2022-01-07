; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sbus/extr_sbus.c_sbus_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbus_softc = type { i64 }
%struct.sbus_devinfo = type { i64, i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @sbus_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbus_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.sbus_softc*, align 8
  %11 = alloca %struct.sbus_devinfo*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.sbus_softc* @device_get_softc(i32 %12)
  store %struct.sbus_softc* %13, %struct.sbus_softc** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.sbus_devinfo* @device_get_ivars(i32 %14)
  store %struct.sbus_devinfo* %15, %struct.sbus_devinfo** %11, align 8
  %16 = icmp eq %struct.sbus_devinfo* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOENT, align 4
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %41 [
    i32 131, label %21
    i32 130, label %26
    i32 129, label %31
    i32 128, label %36
  ]

21:                                               ; preds = %19
  %22 = load %struct.sbus_devinfo*, %struct.sbus_devinfo** %11, align 8
  %23 = getelementptr inbounds %struct.sbus_devinfo, %struct.sbus_devinfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  br label %43

26:                                               ; preds = %19
  %27 = load %struct.sbus_devinfo*, %struct.sbus_devinfo** %11, align 8
  %28 = getelementptr inbounds %struct.sbus_devinfo, %struct.sbus_devinfo* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %9, align 8
  store i64 %29, i64* %30, align 8
  br label %43

31:                                               ; preds = %19
  %32 = load %struct.sbus_softc*, %struct.sbus_softc** %10, align 8
  %33 = getelementptr inbounds %struct.sbus_softc, %struct.sbus_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  br label %43

36:                                               ; preds = %19
  %37 = load %struct.sbus_devinfo*, %struct.sbus_devinfo** %11, align 8
  %38 = getelementptr inbounds %struct.sbus_devinfo, %struct.sbus_devinfo* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %9, align 8
  store i64 %39, i64* %40, align 8
  br label %43

41:                                               ; preds = %19
  %42 = load i32, i32* @ENOENT, align 4
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %36, %31, %26, %21
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %41, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.sbus_softc* @device_get_softc(i32) #1

declare dso_local %struct.sbus_devinfo* @device_get_ivars(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
