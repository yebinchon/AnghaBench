; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_load_root_entry_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_load_root_entry_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32 }

@DMAR_RTADDR_REG = common dso_local global i32 0, align 4
@DMAR_GCMD_REG = common dso_local global i32 0, align 4
@DMAR_GCMD_SRTP = common dso_local global i32 0, align 4
@DMAR_GSTS_REG = common dso_local global i32 0, align 4
@DMAR_GSTS_RTPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_load_root_entry_ptr(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %5 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %6 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %5)
  %7 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %8 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @VM_OBJECT_RLOCK(i32 %9)
  %11 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %12 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vm_page_lookup(i32 %13, i32 0)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %16 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @VM_OBJECT_RUNLOCK(i32 %17)
  %19 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %20 = load i32, i32* @DMAR_RTADDR_REG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @VM_PAGE_TO_PHYS(i32 %21)
  %23 = call i32 @dmar_write8(%struct.dmar_unit* %19, i32 %20, i32 %22)
  %24 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %25 = load i32, i32* @DMAR_GCMD_REG, align 4
  %26 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %27 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMAR_GCMD_SRTP, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @dmar_write4(%struct.dmar_unit* %24, i32 %25, i32 %30)
  %32 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %33 = load i32, i32* @DMAR_GSTS_REG, align 4
  %34 = call i32 @dmar_read4(%struct.dmar_unit* %32, i32 %33)
  %35 = load i32, i32* @DMAR_GSTS_RTPS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @DMAR_WAIT_UNTIL(i32 %38)
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @VM_OBJECT_RLOCK(i32) #1

declare dso_local i32 @vm_page_lookup(i32, i32) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(i32) #1

declare dso_local i32 @dmar_write8(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @dmar_write4(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @DMAR_WAIT_UNTIL(i32) #1

declare dso_local i32 @dmar_read4(%struct.dmar_unit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
