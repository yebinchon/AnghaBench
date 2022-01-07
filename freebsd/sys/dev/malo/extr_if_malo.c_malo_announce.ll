; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_announce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"versions [hw %d fw %d.%d.%d.%d] (regioncode %d)\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@malo_rxbuf = common dso_local global i64 0, align 8
@MALO_RXBUF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"using %u rx buffers\0A\00", align 1
@malo_txbuf = common dso_local global i64 0, align 8
@MALO_TXBUF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"using %u tx buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malo_softc*)* @malo_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malo_announce(%struct.malo_softc* %0) #0 {
  %2 = alloca %struct.malo_softc*, align 8
  store %struct.malo_softc* %0, %struct.malo_softc** %2, align 8
  %3 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %4 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %7 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %12 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 24
  %16 = and i32 %15, 255
  %17 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %18 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %24 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 8
  %28 = and i32 %27, 255
  %29 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %30 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 0
  %34 = and i32 %33, 255
  %35 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %36 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %5, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %10, i32 %16, i32 %22, i32 %28, i32 %34, i32 %38)
  %40 = load i64, i64* @bootverbose, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %1
  %43 = load i64, i64* @malo_rxbuf, align 8
  %44 = load i64, i64* @MALO_RXBUF, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42, %1
  %47 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %48 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @malo_rxbuf, align 8
  %51 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i64, i64* @bootverbose, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @malo_txbuf, align 8
  %57 = load i64, i64* @MALO_TXBUF, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %52
  %60 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %61 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @malo_txbuf, align 8
  %64 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %59, %55
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
