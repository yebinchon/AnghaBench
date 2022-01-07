; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_quirks.c_cpu_e5_am9.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_quirks.c_cpu_e5_am9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*)* @cpu_e5_am9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_e5_am9(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %3 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %4 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = and i64 %6, -17732923532771329
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %10 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = or i64 %12, 2533274790395904
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
