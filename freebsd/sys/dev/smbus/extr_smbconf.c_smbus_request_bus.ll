; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbconf.c_smbus_request_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smbus/extr_smbconf.c_smbus_request_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbus_softc = type { i64, i32 }

@SMB_REQUEST_BUS = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@SMB_RELEASE_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbus_request_bus(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.smbus_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call %struct.smbus_softc* @device_get_softc(i64 %11)
  store %struct.smbus_softc* %12, %struct.smbus_softc** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %16 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %15, i32 0, i32 1
  %17 = call i32 @mtx_lock(i32* %16)
  br label %18

18:                                               ; preds = %35, %3
  %19 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %20 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %19, i32 0, i32 1
  %21 = call i32 @mtx_unlock(i32* %20)
  %22 = load i64, i64* %9, align 8
  %23 = load i32, i32* @SMB_REQUEST_BUS, align 4
  %24 = call i32 @SMBUS_CALLBACK(i64 %22, i32 %23, i32* %7)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %26 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %25, i32 0, i32 1
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @smbus_poll(%struct.smbus_softc* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %18
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @EWOULDBLOCK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %18, label %39

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %73, %39
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %45 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %50 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @smbus_poll(%struct.smbus_softc* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  br label %62

58:                                               ; preds = %48, %43
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %61 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %74

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %67 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %66, i32 0, i32 1
  %68 = call i32 @mtx_unlock(i32* %67)
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @SMB_RELEASE_BUS, align 4
  %71 = call i32 @SMBUS_CALLBACK(i64 %69, i32 %70, i32* %7)
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %4, align 4
  br label %79

73:                                               ; preds = %62
  br label %40

74:                                               ; preds = %58, %40
  %75 = load %struct.smbus_softc*, %struct.smbus_softc** %8, align 8
  %76 = getelementptr inbounds %struct.smbus_softc, %struct.smbus_softc* %75, i32 0, i32 1
  %77 = call i32 @mtx_unlock(i32* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %65
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.smbus_softc* @device_get_softc(i64) #1

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @SMBUS_CALLBACK(i64, i32, i32*) #1

declare dso_local i32 @smbus_poll(%struct.smbus_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
