; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_set_device_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_set_device_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_softc = type { i32 }
%struct.adb_devinfo = type { i32, i64, i32 }

@ADB_COMMAND_LISTEN = common dso_local global i32 0, align 4
@ADB_COMMAND_TALK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @adb_set_device_handler(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.adb_softc*, align 8
  %6 = alloca %struct.adb_devinfo*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.adb_devinfo* @device_get_ivars(i32 %8)
  store %struct.adb_devinfo* %9, %struct.adb_devinfo** %6, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  %12 = call %struct.adb_softc* @device_get_softc(i32 %11)
  store %struct.adb_softc* %12, %struct.adb_softc** %5, align 8
  %13 = load %struct.adb_devinfo*, %struct.adb_devinfo** %6, align 8
  %14 = getelementptr inbounds %struct.adb_devinfo, %struct.adb_devinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 65280
  store i32 %16, i32* %7, align 4
  %17 = load i64, i64* %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.adb_softc*, %struct.adb_softc** %5, align 8
  %22 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.adb_devinfo*, %struct.adb_devinfo** %6, align 8
  %25 = getelementptr inbounds %struct.adb_devinfo, %struct.adb_devinfo* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ADB_COMMAND_LISTEN, align 4
  %28 = call i32 @adb_send_raw_packet_sync(i32 %23, i32 %26, i32 %27, i32 3, i32 4, i32* %7, i32* null)
  %29 = load %struct.adb_softc*, %struct.adb_softc** %5, align 8
  %30 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.adb_devinfo*, %struct.adb_devinfo** %6, align 8
  %33 = getelementptr inbounds %struct.adb_devinfo, %struct.adb_devinfo* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ADB_COMMAND_TALK, align 4
  %36 = call i32 @adb_send_raw_packet_sync(i32 %31, i32 %34, i32 %35, i32 3, i32 0, i32* null, i32* null)
  %37 = load %struct.adb_devinfo*, %struct.adb_devinfo** %6, align 8
  %38 = getelementptr inbounds %struct.adb_devinfo, %struct.adb_devinfo* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  ret i64 %39
}

declare dso_local %struct.adb_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.adb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @adb_send_raw_packet_sync(i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
