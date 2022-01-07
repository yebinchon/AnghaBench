; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_send_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_devinfo = type { i32 }
%struct.adb_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adb_send_packet(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.adb_devinfo*, align 8
  %13 = alloca %struct.adb_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = call %struct.adb_softc* @device_get_softc(i32 %15)
  store %struct.adb_softc* %16, %struct.adb_softc** %13, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.adb_devinfo* @device_get_ivars(i32 %17)
  store %struct.adb_devinfo* %18, %struct.adb_devinfo** %12, align 8
  %19 = load %struct.adb_devinfo*, %struct.adb_devinfo** %12, align 8
  %20 = getelementptr inbounds %struct.adb_devinfo, %struct.adb_devinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 4
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 2
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load %struct.adb_softc*, %struct.adb_softc** %13, align 8
  %33 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @ADB_HB_SEND_RAW_PACKET(i32 %34, i32 %35, i32 %36, i32* %37, i32 1)
  ret i32 0
}

declare dso_local %struct.adb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.adb_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @ADB_HB_SEND_RAW_PACKET(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
