; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"transmit without txready\00", align 1
@DME_TXPLL = common dso_local global i32 0, align 4
@DME_TXPLH = common dso_local global i32 0, align 4
@DME_ISR = common dso_local global i32 0, align 4
@DME_TCR = common dso_local global i32 0, align 4
@TCR_TXREQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"dme_transmit done, flags %#x busy %d ready %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dme_transmit(%struct.dme_softc* %0) #0 {
  %2 = alloca %struct.dme_softc*, align 8
  store %struct.dme_softc* %0, %struct.dme_softc** %2, align 8
  %3 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %4 = call i32 @DME_ASSERT_LOCKED(%struct.dme_softc* %3)
  %5 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %6 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @KASSERT(i64 %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %10 = load i32, i32* @DME_TXPLL, align 4
  %11 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 255
  %15 = call i32 @dme_write_reg(%struct.dme_softc* %9, i32 %10, i32 %14)
  %16 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %17 = load i32, i32* @DME_TXPLH, align 4
  %18 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %19 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = call i32 @dme_write_reg(%struct.dme_softc* %16, i32 %17, i32 %22)
  %24 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %25 = load i32, i32* @DME_ISR, align 4
  %26 = call i32 @dme_read_reg(%struct.dme_softc* %24, i32 %25)
  %27 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %28 = load i32, i32* @DME_TCR, align 4
  %29 = load i32, i32* @TCR_TXREQ, align 4
  %30 = call i32 @dme_write_reg(%struct.dme_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %32 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %34 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %36 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %41 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %44 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @DTR3(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %42, i64 %45)
  ret void
}

declare dso_local i32 @DME_ASSERT_LOCKED(%struct.dme_softc*) #1

declare dso_local i32 @KASSERT(i64, i8*) #1

declare dso_local i32 @dme_write_reg(%struct.dme_softc*, i32, i32) #1

declare dso_local i32 @dme_read_reg(%struct.dme_softc*, i32) #1

declare dso_local i32 @DTR3(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
