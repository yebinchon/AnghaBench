; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_fault.c_dmar_fault_intr_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_fault.c_dmar_fault_intr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@DMAR_FSTS_ITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DMAR%d: Invalidation timed out\0A\00", align 1
@DMAR_FSTS_ICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"DMAR%d: Invalidation completion error\0A\00", align 1
@DMAR_FSTS_IQE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"DMAR%d: Invalidation queue error\0A\00", align 1
@DMAR_FSTS_APF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"DMAR%d: Advanced pending fault\0A\00", align 1
@DMAR_FSTS_AFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"DMAR%d: Advanced fault overflow\0A\00", align 1
@DMAR_FSTS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_unit*, i32)* @dmar_fault_intr_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_fault_intr_clear(%struct.dmar_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DMAR_FSTS_ITE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %12 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @DMAR_FSTS_ITE, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %10, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @DMAR_FSTS_ICE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %25 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @DMAR_FSTS_ICE, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %23, %18
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DMAR_FSTS_IQE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %38 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @DMAR_FSTS_IQE, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %36, %31
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @DMAR_FSTS_APF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %51 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @DMAR_FSTS_APF, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %49, %44
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @DMAR_FSTS_AFO, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %64 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @DMAR_FSTS_AFO, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %62, %57
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %75 = load i32, i32* @DMAR_FSTS_REG, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @dmar_write4(%struct.dmar_unit* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %70
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @dmar_write4(%struct.dmar_unit*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
