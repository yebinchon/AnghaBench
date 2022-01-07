; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_init_aen_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws.c_tws_init_aen_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@M_TWS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tws_softc*)* @tws_init_aen_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tws_init_aen_q(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  %3 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %4 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %7 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %10 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 256, i32* %11, align 8
  %12 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %13 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %16 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @M_TWS, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @malloc(i32 %21, i32 %22, i32 %25)
  %27 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %28 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @SUCCESS, align 4
  ret i32 %30
}

declare dso_local i32 @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
