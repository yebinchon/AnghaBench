; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbconf.c_smbus_release_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbconf.c_smbus_release_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbus_softc = type { i64, i32 }

@SMB_RELEASE_BUS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbus_release_bus(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.smbus_softc*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.smbus_softc* @device_get_softc(i64 %8)
  store %struct.smbus_softc* %9, %struct.smbus_softc** %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @device_get_parent(i64 %10)
  %12 = load i32, i32* @SMB_RELEASE_BUS, align 4
  %13 = call i32 @SMBUS_CALLBACK(i32 %11, i32 %12, i32* null)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %39

18:                                               ; preds = %2
  %19 = load %struct.smbus_softc*, %struct.smbus_softc** %6, align 8
  %20 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %19, i32 0, i32 1
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load %struct.smbus_softc*, %struct.smbus_softc** %6, align 8
  %23 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.smbus_softc*, %struct.smbus_softc** %6, align 8
  %29 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.smbus_softc*, %struct.smbus_softc** %6, align 8
  %31 = call i32 @wakeup(%struct.smbus_softc* %30)
  br label %34

32:                                               ; preds = %18
  %33 = load i32, i32* @EACCES, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.smbus_softc*, %struct.smbus_softc** %6, align 8
  %36 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %35, i32 0, i32 1
  %37 = call i32 @mtx_unlock(i32* %36)
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %34, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.smbus_softc* @device_get_softc(i64) #1

declare dso_local i32 @SMBUS_CALLBACK(i32, i32, i32*) #1

declare dso_local i32 @device_get_parent(i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @wakeup(%struct.smbus_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
