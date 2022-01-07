; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_engage_disengage_pm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_engage_disengage_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@APM_BIOS = common dso_local global i32 0, align 4
@APM_ENGAGEDISENGAGEPM = common dso_local global i32 0, align 4
@PMDV_ALLDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @apm_engage_disengage_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_engage_disengage_pm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apm_softc*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %3, align 8
  %4 = load i32, i32* @APM_BIOS, align 4
  %5 = shl i32 %4, 8
  %6 = load i32, i32* @APM_ENGAGEDISENGAGEPM, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %9 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 8
  %12 = load i32, i32* @PMDV_ALLDEV, align 4
  %13 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %14 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 %12, i32* %16, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %19 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = call i32 (...) @apm_bioscall()
  ret i32 %26
}

declare dso_local i32 @apm_bioscall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
