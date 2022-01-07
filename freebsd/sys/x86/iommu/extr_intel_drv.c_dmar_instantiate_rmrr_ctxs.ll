; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_instantiate_rmrr_ctxs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_instantiate_rmrr_ctxs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i32 }
%struct.inst_rmrr_iter_args = type { %struct.dmar_unit* }

@DMAR_BARRIER_RMRR = common dso_local global i32 0, align 4
@dmar_inst_rmrr_iter = common dso_local global i32 0, align 4
@DMAR_GCMD_TE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"dmar%d: RMRR not handled but translation is already enabled\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"dmar%d: enabled translation\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"dmar%d: enabling translation failed, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_instantiate_rmrr_ctxs(%struct.dmar_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca %struct.inst_rmrr_iter_args, align 8
  %5 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  %6 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %7 = load i32, i32* @DMAR_BARRIER_RMRR, align 4
  %8 = call i32 @dmar_barrier_enter(%struct.dmar_unit* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %61

11:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %13 = getelementptr inbounds %struct.inst_rmrr_iter_args, %struct.inst_rmrr_iter_args* %4, i32 0, i32 0
  store %struct.dmar_unit* %12, %struct.dmar_unit** %13, align 8
  %14 = load i32, i32* @dmar_inst_rmrr_iter, align 4
  %15 = call i32 @dmar_iterate_tbl(i32 %14, %struct.inst_rmrr_iter_args* %4)
  %16 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %17 = call i32 @DMAR_LOCK(%struct.dmar_unit* %16)
  %18 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %19 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %18, i32 0, i32 2
  %20 = call i32 @LIST_EMPTY(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %11
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %24 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DMAR_GCMD_TE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %31 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %29, i8* %34)
  %36 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %37 = call i32 @dmar_enable_translation(%struct.dmar_unit* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %22
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %45 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %54

48:                                               ; preds = %40
  %49 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %50 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54, %22
  br label %56

56:                                               ; preds = %55, %11
  %57 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %58 = load i32, i32* @DMAR_BARRIER_RMRR, align 4
  %59 = call i32 @dmar_barrier_exit(%struct.dmar_unit* %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @dmar_barrier_enter(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_iterate_tbl(i32, %struct.inst_rmrr_iter_args*) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dmar_enable_translation(%struct.dmar_unit*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @dmar_barrier_exit(%struct.dmar_unit*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
