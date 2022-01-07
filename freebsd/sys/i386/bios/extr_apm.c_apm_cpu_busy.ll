; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_cpu_busy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_cpu_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@APM_BIOS = common dso_local global i32 0, align 4
@APM_CPUBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @apm_cpu_busy() #0 {
  %1 = alloca %struct.apm_softc*, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %1, align 8
  %2 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %3 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %2, i32 0, i32 2
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %33

6:                                                ; preds = %0
  %7 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %8 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %6
  %12 = load i32, i32* @APM_BIOS, align 4
  %13 = shl i32 %12, 8
  %14 = load i32, i32* @APM_CPUBUSY, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %17 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 8
  %20 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %21 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %25 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %29 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = call i32 (...) @apm_bioscall()
  br label %33

33:                                               ; preds = %11, %6, %0
  ret void
}

declare dso_local i32 @apm_bioscall(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
