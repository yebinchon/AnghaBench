; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_ensure_ctx_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_ensure_ctx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }
%struct.sf_buf = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DMAR_PGF_NOALLOC = common dso_local global i32 0, align 4
@TD_PREP_PINNED_ASSERT = common dso_local global i32 0, align 4
@DMAR_PGF_ZERO = common dso_local global i32 0, align 4
@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@DMAR_ROOT_R1_P = common dso_local global i32 0, align 4
@DMAR_ROOT_R1_CTP_MASK = common dso_local global i32 0, align 4
@TD_PINNED_ASSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*, i32)* @dmar_ensure_ctx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_ensure_ctx_page(%struct.dmar_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sf_buf*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %9 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 1, %11
  %13 = load i32, i32* @DMAR_PGF_NOALLOC, align 4
  %14 = call i32* @dmar_pgalloc(i32 %10, i32 %12, i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* @TD_PREP_PINNED_ASSERT, align 4
  %20 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %21 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 1, %23
  %25 = load i32, i32* @DMAR_PGF_ZERO, align 4
  %26 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @dmar_pgalloc(i32 %22, i32 %24, i32 %27)
  store i32* %28, i32** %7, align 8
  %29 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %30 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMAR_PGF_NOALLOC, align 4
  %33 = call %struct.TYPE_4__* @dmar_map_pgtbl(i32 %31, i32 0, i32 %32, %struct.sf_buf** %5)
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %36
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* @DMAR_ROOT_R1_P, align 4
  %41 = load i32, i32* @DMAR_ROOT_R1_CTP_MASK, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @VM_PAGE_TO_PHYS(i32* %42)
  %44 = and i32 %41, %43
  %45 = or i32 %40, %44
  %46 = call i32 @dmar_pte_store(i32* %39, i32 %45)
  %47 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %49 = call i32 @dmar_flush_root_to_ram(%struct.dmar_unit* %47, %struct.TYPE_4__* %48)
  %50 = load %struct.sf_buf*, %struct.sf_buf** %5, align 8
  %51 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %50)
  %52 = load i32, i32* @TD_PINNED_ASSERT, align 4
  br label %53

53:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32* @dmar_pgalloc(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @dmar_map_pgtbl(i32, i32, i32, %struct.sf_buf**) #1

declare dso_local i32 @dmar_pte_store(i32*, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32*) #1

declare dso_local i32 @dmar_flush_root_to_ram(%struct.dmar_unit*, %struct.TYPE_4__*) #1

declare dso_local i32 @dmar_unmap_pgtbl(%struct.sf_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
