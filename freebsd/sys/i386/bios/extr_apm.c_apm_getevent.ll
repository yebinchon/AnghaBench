; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_getevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_getevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@APM_BIOS = common dso_local global i32 0, align 4
@APM_GETPMEVENT = common dso_local global i32 0, align 4
@PMEV_NOEVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @apm_getevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_getevent() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.apm_softc*, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %2, align 8
  %3 = load i32, i32* @APM_BIOS, align 4
  %4 = shl i32 %3, 8
  %5 = load i32, i32* @APM_GETPMEVENT, align 4
  %6 = or i32 %4, %5
  %7 = load %struct.apm_softc*, %struct.apm_softc** %2, align 8
  %8 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %6, i32* %10, align 8
  %11 = load %struct.apm_softc*, %struct.apm_softc** %2, align 8
  %12 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = load %struct.apm_softc*, %struct.apm_softc** %2, align 8
  %16 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.apm_softc*, %struct.apm_softc** %2, align 8
  %20 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = call i64 (...) @apm_bioscall()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = load i32, i32* @PMEV_NOEVENT, align 4
  store i32 %26, i32* %1, align 4
  br label %34

27:                                               ; preds = %0
  %28 = load %struct.apm_softc*, %struct.apm_softc** %2, align 8
  %29 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 65535
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %27, %25
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i64 @apm_bioscall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
