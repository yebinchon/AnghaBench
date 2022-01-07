; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_getvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/arswitch/extr_arswitch_vlans.c_ar8xxx_getvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arswitch_softc = type { i32*, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (%struct.arswitch_softc.0*, i64*, i64*, i32)*, i32 (%struct.arswitch_softc.1*, i64*, i32)* }
%struct.arswitch_softc.0 = type opaque
%struct.arswitch_softc.1 = type opaque
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i64, i64, i64 }

@MA_NOTOWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_getvgroup(%struct.arswitch_softc* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arswitch_softc*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.arswitch_softc* %0, %struct.arswitch_softc** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %7 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %8 = load i32, i32* @MA_NOTOWNED, align 4
  %9 = call i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc* %7, i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %14 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %94

20:                                               ; preds = %2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %28 = call i32 @ARSWITCH_LOCK(%struct.arswitch_softc* %27)
  %29 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %30 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %20
  %46 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %47 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %46)
  store i32 0, i32* %3, align 4
  br label %94

48:                                               ; preds = %20
  %49 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %50 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %85 [
    i32 129, label %52
    i32 128, label %67
  ]

52:                                               ; preds = %48
  %53 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %54 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32 (%struct.arswitch_softc.0*, i64*, i64*, i32)*, i32 (%struct.arswitch_softc.0*, i64*, i64*, i32)** %55, align 8
  %57 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %58 = bitcast %struct.arswitch_softc* %57 to %struct.arswitch_softc.0*
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 %56(%struct.arswitch_softc.0* %58, i64* %60, i64* %62, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %90

67:                                               ; preds = %48
  %68 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %69 = getelementptr inbounds %struct.arswitch_softc, %struct.arswitch_softc* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32 (%struct.arswitch_softc.1*, i64*, i32)*, i32 (%struct.arswitch_softc.1*, i64*, i32)** %70, align 8
  %72 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %73 = bitcast %struct.arswitch_softc* %72 to %struct.arswitch_softc.1*
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 %71(%struct.arswitch_softc.1* %73, i64* %75, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %90

85:                                               ; preds = %48
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  store i32 -1, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %67, %52
  %91 = load %struct.arswitch_softc*, %struct.arswitch_softc** %4, align 8
  %92 = call i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %45, %18
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @ARSWITCH_LOCK_ASSERT(%struct.arswitch_softc*, i32) #1

declare dso_local i32 @ARSWITCH_LOCK(%struct.arswitch_softc*) #1

declare dso_local i32 @ARSWITCH_UNLOCK(%struct.arswitch_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
