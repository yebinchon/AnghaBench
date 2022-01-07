; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_enable_disable_pm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_enable_disable_pm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@APM_BIOS = common dso_local global i32 0, align 4
@APM_ENABLEDISABLEPM = common dso_local global i32 0, align 4
@PMDV_ALLDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @apm_enable_disable_pm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_enable_disable_pm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apm_softc*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %3, align 8
  %4 = load i32, i32* @APM_BIOS, align 4
  %5 = shl i32 %4, 8
  %6 = load i32, i32* @APM_ENABLEDISABLEPM, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %9 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 %7, i32* %11, align 8
  %12 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %13 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @INTVERSION(i32 1, i32 1)
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32, i32* @PMDV_ALLDEV, align 4
  %19 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %20 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %25 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 65535, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %17
  %29 = load i32, i32* %2, align 4
  %30 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %31 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 8
  %34 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %35 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = call i32 (...) @apm_bioscall()
  ret i32 %38
}

declare dso_local i64 @INTVERSION(i32, i32) #1

declare dso_local i32 @apm_bioscall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
