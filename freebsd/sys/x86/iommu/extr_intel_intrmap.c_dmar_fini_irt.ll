; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_dmar_fini_irt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_dmar_fini_irt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_fini_irt(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %3 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %4 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %6 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %11 = call i32 @dmar_disable_ir(%struct.dmar_unit* %10)
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %13 = call i32 @dmar_qi_invalidate_iec_glob(%struct.dmar_unit* %12)
  %14 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %15 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @vmem_destroy(i32 %16)
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = ptrtoint i32* %20 to i32
  %22 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %23 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i32 @kmem_free(i32 %21, i32 %27)
  br label %29

29:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @dmar_disable_ir(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_invalidate_iec_glob(%struct.dmar_unit*) #1

declare dso_local i32 @vmem_destroy(i32) #1

declare dso_local i32 @kmem_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
