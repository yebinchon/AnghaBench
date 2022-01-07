; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_suspend_system.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_suspend_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@APM_BIOS = common dso_local global i32 0, align 4
@APM_SETPWSTATE = common dso_local global i32 0, align 4
@PMDV_ALLDEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Entire system suspend failure: errcode = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @apm_suspend_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_suspend_system(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.apm_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %4, align 8
  %5 = load i32, i32* @APM_BIOS, align 4
  %6 = shl i32 %5, 8
  %7 = load i32, i32* @APM_SETPWSTATE, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store i32 %8, i32* %12, align 8
  %13 = load i32, i32* @PMDV_ALLDEV, align 4
  %14 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %15 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i32 %13, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  %23 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %24 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = call i64 (...) @apm_bioscall()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.apm_softc*, %struct.apm_softc** %4, align 8
  %31 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 8
  %36 = and i32 255, %35
  %37 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 1, i32* %2, align 4
  br label %39

38:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @apm_bioscall(...) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
