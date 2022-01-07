; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_invalidate_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_invalidate_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, %struct.dmar_unit* }
%struct.dmar_unit = type { i32 }
%struct.dmar_qi_genseq = type { i32 }

@DMAR_IQ_DESCR_IOTLB_INV = common dso_local global i32 0, align 4
@DMAR_IQ_DESCR_IOTLB_PAGE = common dso_local global i32 0, align 4
@DMAR_IQ_DESCR_IOTLB_DW = common dso_local global i32 0, align 4
@DMAR_IQ_DESCR_IOTLB_DR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_qi_invalidate_locked(%struct.dmar_domain* %0, i32 %1, i32 %2, %struct.dmar_qi_genseq* %3, i32 %4) #0 {
  %6 = alloca %struct.dmar_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dmar_qi_genseq*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dmar_unit*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dmar_qi_genseq* %3, %struct.dmar_qi_genseq** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %15 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %14, i32 0, i32 1
  %16 = load %struct.dmar_unit*, %struct.dmar_unit** %15, align 8
  store %struct.dmar_unit* %16, %struct.dmar_unit** %11, align 8
  %17 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %18 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %17)
  br label %19

19:                                               ; preds = %46, %5
  %20 = load i32, i32* %8, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @calc_am(%struct.dmar_unit* %23, i32 %24, i32 %25, i32* %12)
  store i32 %26, i32* %13, align 4
  %27 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %28 = call i32 @dmar_qi_ensure(%struct.dmar_unit* %27, i32 1)
  %29 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %30 = load i32, i32* @DMAR_IQ_DESCR_IOTLB_INV, align 4
  %31 = load i32, i32* @DMAR_IQ_DESCR_IOTLB_PAGE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DMAR_IQ_DESCR_IOTLB_DW, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @DMAR_IQ_DESCR_IOTLB_DR, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.dmar_domain*, %struct.dmar_domain** %6, align 8
  %38 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @DMAR_IQ_DESCR_IOTLB_DID(i32 %39)
  %41 = or i32 %36, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @dmar_qi_emit(%struct.dmar_unit* %29, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %22
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %55 = load %struct.dmar_qi_genseq*, %struct.dmar_qi_genseq** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @dmar_qi_emit_wait_seq(%struct.dmar_unit* %54, %struct.dmar_qi_genseq* %55, i32 %56)
  %58 = load %struct.dmar_unit*, %struct.dmar_unit** %11, align 8
  %59 = call i32 @dmar_qi_advance_tail(%struct.dmar_unit* %58)
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @calc_am(%struct.dmar_unit*, i32, i32, i32*) #1

declare dso_local i32 @dmar_qi_ensure(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_qi_emit(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @DMAR_IQ_DESCR_IOTLB_DID(i32) #1

declare dso_local i32 @dmar_qi_emit_wait_seq(%struct.dmar_unit*, %struct.dmar_qi_genseq*, i32) #1

declare dso_local i32 @dmar_qi_advance_tail(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
