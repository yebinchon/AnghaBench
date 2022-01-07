; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_invalidate_iec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_qi_invalidate_iec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i64 }
%struct.dmar_qi_genseq = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"inv iec overflow %d %d %d\00", align 1
@DMAR_IQ_DESCR_IEC_INV = common dso_local global i32 0, align 4
@DMAR_IQ_DESCR_IEC_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_qi_invalidate_iec(%struct.dmar_unit* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dmar_unit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dmar_qi_genseq, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %11 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %10)
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %14 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add nsw i64 %19, %20
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %28 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br label %31

31:                                               ; preds = %23, %17, %3
  %32 = phi i1 [ false, %17 ], [ false, %3 ], [ %30, %23 ]
  %33 = zext i1 %32 to i32
  %34 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %35 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @KASSERT(i32 %33, i8* %39)
  br label %41

41:                                               ; preds = %67, %31
  %42 = load i64, i64* %6, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = or i64 %45, %46
  %48 = call i64 @ffs(i64 %47)
  %49 = sub nsw i64 %48, 1
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = trunc i64 %50 to i32
  %52 = shl i32 1, %51
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %8, align 8
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %55 = call i32 @dmar_qi_ensure(%struct.dmar_unit* %54, i32 1)
  %56 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %57 = load i32, i32* @DMAR_IQ_DESCR_IEC_INV, align 4
  %58 = load i32, i32* @DMAR_IQ_DESCR_IEC_IDX, align 4
  %59 = or i32 %57, %58
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @DMAR_IQ_DESCR_IEC_IIDX(i64 %60)
  %62 = or i32 %59, %61
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @DMAR_IQ_DESCR_IEC_IM(i64 %63)
  %65 = or i32 %62, %64
  %66 = call i32 @dmar_qi_emit(%struct.dmar_unit* %56, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %44
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %6, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* %6, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %5, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %5, align 8
  br label %41

74:                                               ; preds = %41
  %75 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %76 = call i32 @dmar_qi_ensure(%struct.dmar_unit* %75, i32 1)
  %77 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %78 = call i32 @dmar_qi_emit_wait_seq(%struct.dmar_unit* %77, %struct.dmar_qi_genseq* %7, i32 1)
  %79 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %80 = call i32 @dmar_qi_advance_tail(%struct.dmar_unit* %79)
  %81 = load %struct.dmar_unit*, %struct.dmar_unit** %4, align 8
  %82 = call i32 @dmar_qi_wait_for_seq(%struct.dmar_unit* %81, %struct.dmar_qi_genseq* %7, i32 1)
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @ffs(i64) #1

declare dso_local i32 @dmar_qi_ensure(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_qi_emit(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @DMAR_IQ_DESCR_IEC_IIDX(i64) #1

declare dso_local i32 @DMAR_IQ_DESCR_IEC_IM(i64) #1

declare dso_local i32 @dmar_qi_emit_wait_seq(%struct.dmar_unit*, %struct.dmar_qi_genseq*, i32) #1

declare dso_local i32 @dmar_qi_advance_tail(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_wait_for_seq(%struct.dmar_unit*, %struct.dmar_qi_genseq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
