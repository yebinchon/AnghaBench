; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i64, i64, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@DME_RCR = common dso_local global i32 0, align 4
@DME_IMR = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dme_stop, flags %#x busy %d ready %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dme_softc*)* @dme_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dme_stop(%struct.dme_softc* %0) #0 {
  %2 = alloca %struct.dme_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.dme_softc* %0, %struct.dme_softc** %2, align 8
  %4 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %5 = call i32 @DME_ASSERT_LOCKED(%struct.dme_softc* %4)
  %6 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %7 = load i32, i32* @DME_RCR, align 4
  %8 = call i32 @dme_write_reg(%struct.dme_softc* %6, i32 %7, i32 0)
  %9 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %10 = load i32, i32* @DME_IMR, align 4
  %11 = call i32 @dme_write_reg(%struct.dme_softc* %9, i32 %10, i32 0)
  %12 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %13 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %12, i32 0, i32 3
  %14 = call i32 @callout_stop(i32* %13)
  %15 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %16 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %15, i32 0, i32 2
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %3, align 8
  %18 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %19 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %27 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %26, i32 0, i32 2
  %28 = load %struct.ifnet*, %struct.ifnet** %27, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %32 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %35 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @DTR3(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33, i64 %36)
  %38 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %39 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %41 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  ret void
}

declare dso_local i32 @DME_ASSERT_LOCKED(%struct.dme_softc*) #1

declare dso_local i32 @dme_write_reg(%struct.dme_softc*, i32, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @DTR3(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
