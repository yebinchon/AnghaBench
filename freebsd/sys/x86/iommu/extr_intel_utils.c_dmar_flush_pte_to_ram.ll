; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_flush_pte_to_ram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_flush_pte_to_ram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_flush_pte_to_ram(%struct.dmar_unit* %0, i32* %1) #0 {
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca i32*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @dmar_flush_transl_to_ram(%struct.dmar_unit* %5, i32* %6, i32 4)
  ret void
}

declare dso_local i32 @dmar_flush_transl_to_ram(%struct.dmar_unit*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
