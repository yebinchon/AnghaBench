; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_iommu_map_msi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_iommu_map_msi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"DMAR cannot translate itself\00", align 1
@MSI_INTEL_ADDR_BASE = common dso_local global i32 0, align 4
@x2apic_mode = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"cpu id too big %d\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DMAR_IRTE1_DLM_FM = common dso_local global i32 0, align 4
@DMAR_IRTE1_TM_EDGE = common dso_local global i32 0, align 4
@DMAR_IRTE1_RH_DIRECT = common dso_local global i32 0, align 4
@DMAR_IRTE1_DM_PHYSICAL = common dso_local global i32 0, align 4
@DMAR_IRTE1_P = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_map_msi_intr(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dmar_unit*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.dmar_unit* @dmar_ir_find(i32 %18, i32* %16, i32* %17)
  store %struct.dmar_unit* %19, %struct.dmar_unit** %14, align 8
  %20 = load i32, i32* %17, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %6
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %24 = icmp eq %struct.dmar_unit* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %13, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @MSI_INTEL_ADDR_BASE, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 255
  %32 = shl i32 %31, 12
  %33 = or i32 %29, %32
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i64, i64* @x2apic_mode, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, -256
  %40 = shl i32 %39, 32
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %52

44:                                               ; preds = %22
  %45 = load i32, i32* %9, align 4
  %46 = icmp sle i32 %45, 255
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @KASSERT(i32 %47, i8* %50)
  br label %52

52:                                               ; preds = %44, %37
  store i32 0, i32* %7, align 4
  br label %112

53:                                               ; preds = %6
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %55 = icmp eq %struct.dmar_unit* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %58 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %56, %53
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %65, i32* %7, align 4
  br label %112

66:                                               ; preds = %61
  %67 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %68 = call i64 @DMAR_X2APIC(%struct.dmar_unit* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @DMAR_IRTE1_DST_x2APIC(i32 %71)
  br label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @DMAR_IRTE1_DST_xAPIC(i32 %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i32 [ %72, %70 ], [ %75, %73 ]
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @DMAR_IRTE1_V(i32 %78)
  %80 = or i32 %77, %79
  %81 = load i32, i32* @DMAR_IRTE1_DLM_FM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @DMAR_IRTE1_TM_EDGE, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @DMAR_IRTE1_RH_DIRECT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DMAR_IRTE1_DM_PHYSICAL, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @DMAR_IRTE1_P, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %15, align 4
  %91 = load %struct.dmar_unit*, %struct.dmar_unit** %14, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @dmar_ir_program_irte(%struct.dmar_unit* %91, i32 %92, i32 %93, i32 %94)
  %96 = load i32*, i32** %12, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %111

98:                                               ; preds = %76
  %99 = load i32, i32* @MSI_INTEL_ADDR_BASE, align 4
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, 32767
  %102 = shl i32 %101, 5
  %103 = or i32 %99, %102
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, 32768
  %106 = shl i32 %105, 2
  %107 = or i32 %103, %106
  %108 = or i32 %107, 24
  %109 = load i32*, i32** %12, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** %13, align 8
  store i32 0, i32* %110, align 4
  br label %111

111:                                              ; preds = %98, %76
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %64, %52
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local %struct.dmar_unit* @dmar_ir_find(i32, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @DMAR_X2APIC(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_IRTE1_DST_x2APIC(i32) #1

declare dso_local i32 @DMAR_IRTE1_DST_xAPIC(i32) #1

declare dso_local i32 @DMAR_IRTE1_V(i32) #1

declare dso_local i32 @dmar_ir_program_irte(%struct.dmar_unit*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
