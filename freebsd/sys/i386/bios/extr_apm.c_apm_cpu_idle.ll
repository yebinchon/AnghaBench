; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@APM_BIOS = common dso_local global i32 0, align 4
@APM_CPUIDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apm_cpu_idle() #0 {
  %1 = alloca %struct.apm_softc*, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %1, align 8
  %2 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %3 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %2, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %0
  %7 = load i32, i32* @APM_BIOS, align 4
  %8 = shl i32 %7, 8
  %9 = load i32, i32* @APM_CPUIDLE, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %12 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 8
  %15 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %16 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %20 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %24 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = call i32 (...) @apm_bioscall()
  br label %28

28:                                               ; preds = %6, %0
  %29 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %30 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %35 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %28
  %39 = call i32 (...) @halt()
  br label %40

40:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @apm_bioscall(...) #1

declare dso_local i32 @halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
