; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_read_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_softc = type { i32 }

@vSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu_softc*, i8**)* @pmu_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_read_byte(%struct.pmu_softc* %0, i8** %1) #0 {
  %3 = alloca %struct.pmu_softc*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store %struct.pmu_softc* %0, %struct.pmu_softc** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %7 = call i32 @pmu_in(%struct.pmu_softc* %6)
  %8 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %9 = load i32, i32* @vSR, align 4
  %10 = call i8* @pmu_read_reg(%struct.pmu_softc* %8, i32 %9)
  store volatile i8* %10, i8** %5, align 8
  %11 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %12 = call i32 @pmu_ack_off(%struct.pmu_softc* %11)
  br label %13

13:                                               ; preds = %14, %2
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %16 = call i64 @pmu_intr_state(%struct.pmu_softc* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %13, label %18

18:                                               ; preds = %14
  %19 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %20 = call i32 @pmu_ack_on(%struct.pmu_softc* %19)
  br label %21

21:                                               ; preds = %22, %18
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %24 = call i64 @pmu_intr_state(%struct.pmu_softc* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %21, label %26

26:                                               ; preds = %22
  %27 = load %struct.pmu_softc*, %struct.pmu_softc** %3, align 8
  %28 = load i32, i32* @vSR, align 4
  %29 = call i8* @pmu_read_reg(%struct.pmu_softc* %27, i32 %28)
  %30 = load i8**, i8*** %4, align 8
  store i8* %29, i8** %30, align 8
  ret i32 0
}

declare dso_local i32 @pmu_in(%struct.pmu_softc*) #1

declare dso_local i8* @pmu_read_reg(%struct.pmu_softc*, i32) #1

declare dso_local i32 @pmu_ack_off(%struct.pmu_softc*) #1

declare dso_local i64 @pmu_intr_state(%struct.pmu_softc*) #1

declare dso_local i32 @pmu_ack_on(%struct.pmu_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
