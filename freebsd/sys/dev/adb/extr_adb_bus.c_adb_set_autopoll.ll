; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_set_autopoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_set_autopoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_devinfo = type { i32 }
%struct.adb_softc = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adb_set_autopoll(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.adb_devinfo*, align 8
  %6 = alloca %struct.adb_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = call %struct.adb_softc* @device_get_softc(i32 %9)
  store %struct.adb_softc* %10, %struct.adb_softc** %6, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.adb_devinfo* @device_get_ivars(i32 %11)
  store %struct.adb_devinfo* %12, %struct.adb_devinfo** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.adb_devinfo*, %struct.adb_devinfo** %5, align 8
  %15 = getelementptr inbounds %struct.adb_devinfo, %struct.adb_devinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.adb_softc*, %struct.adb_softc** %6, align 8
  %23 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %27, -1
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.adb_softc*, %struct.adb_softc** %6, align 8
  %31 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %26, %20
  %35 = load %struct.adb_softc*, %struct.adb_softc** %6, align 8
  %36 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.adb_softc*, %struct.adb_softc** %6, align 8
  %39 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ADB_HB_SET_AUTOPOLL_MASK(i32 %37, i32 %40)
  ret i32 0
}

declare dso_local %struct.adb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.adb_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @ADB_HB_SET_AUTOPOLL_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
