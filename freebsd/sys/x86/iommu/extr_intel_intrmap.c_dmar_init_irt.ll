; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_dmar_init_irt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_intrmap.c_dmar_init_irt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i32, i32, i32*, i32, i32, i32 }

@DMAR_ECAP_IR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hw.dmar.ir\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"QI disabled, disabling interrupt remapping\0A\00", align 1
@num_io_irqs = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@dmar_high = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"dmarirt\00", align 1
@M_FIRSTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_init_irt(%struct.dmar_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmar_unit*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  %4 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %5 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @DMAR_ECAP_IR, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %105

11:                                               ; preds = %1
  %12 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %13 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %15 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %14, i32 0, i32 1
  %16 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %15)
  %17 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %18 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %105

22:                                               ; preds = %11
  %23 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %24 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %22
  %28 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %29 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load i64, i64* @bootverbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %34 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %27
  store i32 0, i32* %2, align 4
  br label %105

38:                                               ; preds = %22
  %39 = load i32, i32* @num_io_irqs, align 4
  %40 = call i32 @clp2(i32 %39)
  %41 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %42 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %44 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @dmar_high, align 4
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %55 = call i64 @DMAR_IS_COHERENT(%struct.dmar_unit* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %38
  %58 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  br label %61

59:                                               ; preds = %38
  %60 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = call i64 @kmem_alloc_contig(i32 %48, i32 %51, i32 0, i32 %52, i32 %53, i32 0, i32 %62)
  %64 = inttoptr i64 %63 to i32*
  %65 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %66 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %68 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @ENOMEM, align 4
  store i32 %72, i32* %2, align 4
  br label %105

73:                                               ; preds = %61
  %74 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %75 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = ptrtoint i32* %76 to i32
  %78 = call i32 @pmap_kextract(i32 %77)
  %79 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %80 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %82 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @M_FIRSTFIT, align 4
  %85 = load i32, i32* @M_NOWAIT, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @vmem_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %83, i32 1, i32 0, i32 %86)
  %88 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %89 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 4
  %90 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %91 = call i32 @DMAR_LOCK(%struct.dmar_unit* %90)
  %92 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %93 = call i32 @dmar_load_irt_ptr(%struct.dmar_unit* %92)
  %94 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %95 = call i32 @dmar_qi_invalidate_iec_glob(%struct.dmar_unit* %94)
  %96 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %97 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %96)
  %98 = call i32 (...) @intr_reprogram()
  %99 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %100 = call i32 @DMAR_LOCK(%struct.dmar_unit* %99)
  %101 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %102 = call i32 @dmar_enable_ir(%struct.dmar_unit* %101)
  %103 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %104 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %73, %71, %37, %21, %10
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clp2(i32) #1

declare dso_local i64 @kmem_alloc_contig(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @DMAR_IS_COHERENT(%struct.dmar_unit*) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @vmem_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_load_irt_ptr(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_invalidate_iec_glob(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @intr_reprogram(...) #1

declare dso_local i32 @dmar_enable_ir(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
