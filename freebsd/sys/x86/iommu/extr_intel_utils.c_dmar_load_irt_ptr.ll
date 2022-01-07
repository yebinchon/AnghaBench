; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_load_irt_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_utils.c_dmar_load_irt_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i64 }

@DMAR_IRTA_EIME = common dso_local global i64 0, align 8
@DMAR_IRTA_S_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"IRTA_REG_S overflow %x\00", align 1
@DMAR_IRTA_REG = common dso_local global i32 0, align 4
@DMAR_GCMD_REG = common dso_local global i32 0, align 4
@DMAR_GCMD_SIRTP = common dso_local global i32 0, align 4
@DMAR_GSTS_REG = common dso_local global i32 0, align 4
@DMAR_GSTS_IRTPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_load_irt_ptr(%struct.dmar_unit* %0) #0 {
  %2 = alloca %struct.dmar_unit*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %2, align 8
  %6 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %7 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %6)
  %8 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %9 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %12 = call i64 @DMAR_X2APIC(%struct.dmar_unit* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i64, i64* @DMAR_IRTA_EIME, align 8
  %16 = load i64, i64* %3, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %20 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @fls(i32 %21)
  %23 = sub nsw i64 %22, 2
  store i64 %23, i64* %4, align 8
  %24 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %25 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %38

28:                                               ; preds = %18
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @DMAR_IRTA_S_MASK, align 8
  %31 = icmp sle i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %34 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @powerof2(i32 %35)
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %32, %28, %18
  %39 = phi i1 [ false, %28 ], [ false, %18 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  %41 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %42 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KASSERT(i32 %40, i8* %45)
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %3, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %3, align 8
  %50 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %51 = load i32, i32* @DMAR_IRTA_REG, align 4
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @dmar_write8(%struct.dmar_unit* %50, i32 %51, i64 %52)
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %55 = load i32, i32* @DMAR_GCMD_REG, align 4
  %56 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %57 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DMAR_GCMD_SIRTP, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @dmar_write4(%struct.dmar_unit* %54, i32 %55, i32 %60)
  %62 = load %struct.dmar_unit*, %struct.dmar_unit** %2, align 8
  %63 = load i32, i32* @DMAR_GSTS_REG, align 4
  %64 = call i32 @dmar_read4(%struct.dmar_unit* %62, i32 %63)
  %65 = load i32, i32* @DMAR_GSTS_IRTPS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @DMAR_WAIT_UNTIL(i32 %68)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i64 @DMAR_X2APIC(%struct.dmar_unit*) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @powerof2(i32) #1

declare dso_local i32 @dmar_write8(%struct.dmar_unit*, i32, i64) #1

declare dso_local i32 @dmar_write4(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @DMAR_WAIT_UNTIL(i32) #1

declare dso_local i32 @dmar_read4(%struct.dmar_unit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
