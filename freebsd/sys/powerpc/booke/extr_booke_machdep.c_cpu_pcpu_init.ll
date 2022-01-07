; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_booke_machdep.c_cpu_pcpu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_booke_machdep.c_cpu_pcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32 }

@TID_MIN = common dso_local global i32 0, align 4
@RES_GRANULE = common dso_local global i32 0, align 4
@TLB_UNLOCKED = common dso_local global i64 0, align 8
@tlb0_miss_locks = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_pcpu_init(%struct.pcpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.pcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pcpu* %0, %struct.pcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* @TID_MIN, align 4
  %8 = load %struct.pcpu*, %struct.pcpu** %4, align 8
  %9 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
