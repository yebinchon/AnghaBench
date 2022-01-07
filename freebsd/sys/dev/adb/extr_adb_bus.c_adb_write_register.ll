; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_write_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_bus.c_adb_write_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_softc = type { i32 }
%struct.adb_devinfo = type { i32 }

@ADB_COMMAND_LISTEN = common dso_local global i32 0, align 4
@ADB_COMMAND_TALK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @adb_write_register(i32 %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.adb_softc*, align 8
  %10 = alloca %struct.adb_devinfo*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.adb_devinfo* @device_get_ivars(i32 %12)
  store %struct.adb_devinfo* %13, %struct.adb_devinfo** %10, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = call %struct.adb_softc* @device_get_softc(i32 %15)
  store %struct.adb_softc* %16, %struct.adb_softc** %9, align 8
  %17 = load %struct.adb_softc*, %struct.adb_softc** %9, align 8
  %18 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.adb_devinfo*, %struct.adb_devinfo** %10, align 8
  %21 = getelementptr inbounds %struct.adb_devinfo, %struct.adb_devinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ADB_COMMAND_LISTEN, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = call i64 @adb_send_raw_packet_sync(i32 %19, i32 %22, i32 %23, i32 %24, i64 %25, i32* %27, i32* null)
  store i64 %28, i64* %11, align 8
  %29 = load %struct.adb_softc*, %struct.adb_softc** %9, align 8
  %30 = getelementptr inbounds %struct.adb_softc, %struct.adb_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.adb_devinfo*, %struct.adb_devinfo** %10, align 8
  %33 = getelementptr inbounds %struct.adb_devinfo, %struct.adb_devinfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ADB_COMMAND_TALK, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @adb_send_raw_packet_sync(i32 %31, i32 %34, i32 %35, i32 %36, i64 0, i32* null, i32* null)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  ret i64 %38
}

declare dso_local %struct.adb_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.adb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @adb_send_raw_packet_sync(i32, i32, i32, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
