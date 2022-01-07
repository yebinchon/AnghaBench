; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_not_halt_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_not_halt_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i64, i64 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @apm_not_halt_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_not_halt_cpu() #0 {
  %1 = alloca %struct.apm_softc*, align 8
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %1, align 8
  %2 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %3 = icmp eq %struct.apm_softc* %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %0
  %5 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %6 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4, %0
  br label %13

10:                                               ; preds = %4
  %11 = load %struct.apm_softc*, %struct.apm_softc** %1, align 8
  %12 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %10, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
