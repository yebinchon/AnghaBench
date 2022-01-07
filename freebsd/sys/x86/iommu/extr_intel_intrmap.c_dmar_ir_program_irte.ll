; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_dmar_ir_program_irte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_dmar_ir_program_irte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"bad cookie %d %d\00", align 1
@DMAR_IRTE2_SVT_RID = common dso_local global i32 0, align 4
@DMAR_IRTE2_SQ_RID = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"programming irte[%d] rid %#x high %#jx low %#jx\0A\00", align 1
@DMAR_IRTE1_P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"irte2 mismatch, %jx %jx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*, i64, i32, i32)* @dmar_ir_program_irte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_ir_program_irte(%struct.dmar_unit* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dmar_unit*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %13 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %16, i8* %21)
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %24 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %9, align 8
  %28 = load i32, i32* @DMAR_IRTE2_SVT_RID, align 4
  %29 = load i32, i32* @DMAR_IRTE2_SQ_RID, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DMAR_IRTE2_SID_RID(i32 %31)
  %33 = or i32 %30, %32
  store i32 %33, i32* %10, align 4
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %38 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %36, %4
  %46 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %47 = call i32 @DMAR_LOCK(%struct.dmar_unit* %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DMAR_IRTE1_P, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %45
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @KASSERT(i32 %60, i8* %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @dmar_pte_update(i32* %69, i32 %70)
  br label %81

72:                                               ; preds = %45
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @dmar_pte_store(i32* %74, i32 %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @dmar_pte_store(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %72, %54
  %82 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @dmar_qi_invalidate_iec(%struct.dmar_unit* %82, i64 %83, i32 1)
  %85 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %86 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %85)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_IRTE2_SID_RID(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_pte_update(i32*, i32) #1

declare dso_local i32 @dmar_pte_store(i32*, i32) #1

declare dso_local i32 @dmar_qi_invalidate_iec(%struct.dmar_unit*, i64, i32) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
