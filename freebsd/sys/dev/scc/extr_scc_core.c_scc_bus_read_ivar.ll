; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/scc/extr_scc_core.c_scc_bus_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_chan = type { i64 }
%struct.scc_class = type { i64 }
%struct.scc_mode = type { i64, %struct.scc_chan* }
%struct.scc_softc = type { i32, %struct.TYPE_2__, %struct.scc_class* }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scc_bus_read_ivar(i64 %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.scc_chan*, align 8
  %11 = alloca %struct.scc_class*, align 8
  %12 = alloca %struct.scc_mode*, align 8
  %13 = alloca %struct.scc_softc*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i64 @device_get_parent(i64 %14)
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %67

20:                                               ; preds = %4
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.scc_softc* @device_get_softc(i64 %21)
  store %struct.scc_softc* %22, %struct.scc_softc** %13, align 8
  %23 = load %struct.scc_softc*, %struct.scc_softc** %13, align 8
  %24 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %23, i32 0, i32 2
  %25 = load %struct.scc_class*, %struct.scc_class** %24, align 8
  store %struct.scc_class* %25, %struct.scc_class** %11, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.scc_mode* @device_get_ivars(i64 %26)
  store %struct.scc_mode* %27, %struct.scc_mode** %12, align 8
  %28 = load %struct.scc_mode*, %struct.scc_mode** %12, align 8
  %29 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %28, i32 0, i32 1
  %30 = load %struct.scc_chan*, %struct.scc_chan** %29, align 8
  store %struct.scc_chan* %30, %struct.scc_chan** %10, align 8
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %64 [
    i32 133, label %32
    i32 132, label %37
    i32 131, label %42
    i32 129, label %48
    i32 128, label %53
    i32 130, label %59
  ]

32:                                               ; preds = %20
  %33 = load %struct.scc_chan*, %struct.scc_chan** %10, align 8
  %34 = getelementptr inbounds %struct.scc_chan, %struct.scc_chan* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  br label %66

37:                                               ; preds = %20
  %38 = load %struct.scc_class*, %struct.scc_class** %11, align 8
  %39 = getelementptr inbounds %struct.scc_class, %struct.scc_class* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  br label %66

42:                                               ; preds = %20
  %43 = load %struct.scc_softc*, %struct.scc_softc** %13, align 8
  %44 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  br label %66

48:                                               ; preds = %20
  %49 = load %struct.scc_mode*, %struct.scc_mode** %12, align 8
  %50 = getelementptr inbounds %struct.scc_mode, %struct.scc_mode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  br label %66

53:                                               ; preds = %20
  %54 = load %struct.scc_softc*, %struct.scc_softc** %13, align 8
  %55 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64*, i64** %9, align 8
  store i64 %57, i64* %58, align 8
  br label %66

59:                                               ; preds = %20
  %60 = load %struct.scc_softc*, %struct.scc_softc** %13, align 8
  %61 = getelementptr inbounds %struct.scc_softc, %struct.scc_softc* %60, i32 0, i32 0
  %62 = ptrtoint i32* %61 to i64
  %63 = load i64*, i64** %9, align 8
  store i64 %62, i64* %63, align 8
  br label %66

64:                                               ; preds = %20
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %5, align 4
  br label %67

66:                                               ; preds = %59, %53, %48, %42, %37, %32
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %64, %18
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.scc_softc* @device_get_softc(i64) #1

declare dso_local %struct.scc_mode* @device_get_ivars(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
