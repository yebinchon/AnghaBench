; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_calc_noise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_calc_noise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bwi_mac = type { i32 }

@BWI_REGWIN_T_MAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"current regwin type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*)* @bwi_calc_noise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_calc_noise(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca %struct.bwi_mac*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  %4 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BWI_REGWIN_T_MAC, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %11, i8* %17)
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = bitcast %struct.TYPE_2__* %21 to %struct.bwi_mac*
  store %struct.bwi_mac* %22, %struct.bwi_mac** %3, align 8
  %23 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %24 = call i32 @bwi_rf_calc_noise(%struct.bwi_mac* %23)
  ret i32 %24
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bwi_rf_calc_noise(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
