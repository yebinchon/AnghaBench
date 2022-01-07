; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_unmap_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_idpgtbl.c_domain_unmap_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @domain_unmap_buf(%struct.dmar_domain* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dmar_domain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %11 = call i32 @DMAR_DOMAIN_PGLOCK(%struct.dmar_domain* %10)
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @domain_unmap_buf_locked(%struct.dmar_domain* %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %18 = call i32 @DMAR_DOMAIN_PGUNLOCK(%struct.dmar_domain* %17)
  %19 = load i32, i32* %9, align 4
  ret i32 %19
}

declare dso_local i32 @DMAR_DOMAIN_PGLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @domain_unmap_buf_locked(%struct.dmar_domain*, i32, i32, i32) #1

declare dso_local i32 @DMAR_DOMAIN_PGUNLOCK(%struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
