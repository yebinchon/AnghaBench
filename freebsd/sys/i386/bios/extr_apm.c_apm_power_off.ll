; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_power_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@RB_POWEROFF = common dso_local global i32 0, align 4
@APM_BIOS = common dso_local global i32 0, align 4
@APM_SETPWSTATE = common dso_local global i32 0, align 4
@PMDV_ALLDEV = common dso_local global i32 0, align 4
@PMST_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @apm_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_power_off(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.apm_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RB_POWEROFF, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* getelementptr inbounds (%struct.apm_softc, %struct.apm_softc* @apm_softc, i32 0, i32 1), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  br label %38

14:                                               ; preds = %10
  %15 = load i32, i32* @APM_BIOS, align 4
  %16 = shl i32 %15, 8
  %17 = load i32, i32* @APM_SETPWSTATE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.apm_softc*, %struct.apm_softc** %5, align 8
  %20 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %18, i32* %22, align 8
  %23 = load i32, i32* @PMDV_ALLDEV, align 4
  %24 = load %struct.apm_softc*, %struct.apm_softc** %5, align 8
  %25 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @PMST_OFF, align 4
  %29 = load %struct.apm_softc*, %struct.apm_softc** %5, align 8
  %30 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %28, i32* %32, align 8
  %33 = load %struct.apm_softc*, %struct.apm_softc** %5, align 8
  %34 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = call i32 (...) @apm_bioscall()
  br label %38

38:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @apm_bioscall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
