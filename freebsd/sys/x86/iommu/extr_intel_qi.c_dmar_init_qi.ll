; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_init_qi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_qi.c_dmar_init_qi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i32, i32, i64, i32, i32, i8*, i64, i64, i32, i32, i32, i32 }

@DMAR_CAP_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hw.dmar.qi\00", align 1
@dmar_qi_task = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"dmarqf\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@PI_AV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"dmar%d qi taskq\00", align 1
@DMAR_IQA_QS_DEF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"hw.dmar.qi_size\00", align 1
@DMAR_IQA_QS_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@DMAR_IQ_DESCR_SZ = common dso_local global i64 0, align 8
@M_ZERO = common dso_local global i32 0, align 4
@dmar_high = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@DMAR_IQT_REG = common dso_local global i32 0, align 4
@DMAR_IQA_REG = common dso_local global i32 0, align 4
@DMAR_ICS_REG = common dso_local global i32 0, align 4
@DMAR_ICS_IWC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_init_qi(%struct.dmar_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  %7 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %8 = call i32 @DMAR_HAS_QI(%struct.dmar_unit* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %12 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DMAR_CAP_CM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %133

18:                                               ; preds = %10
  %19 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %20 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %22 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %21, i32 0, i32 1
  %23 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %22)
  %24 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %25 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %133

29:                                               ; preds = %18
  %30 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %31 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %30, i32 0, i32 12
  %32 = call i32 @TAILQ_INIT(i32* %31)
  %33 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %34 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %33, i32 0, i32 11
  %35 = load i32, i32* @dmar_qi_task, align 4
  %36 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %37 = call i32 @TASK_INIT(i32* %34, i32 0, i32 %35, %struct.dmar_unit* %36)
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %40 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %41 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %40, i32 0, i32 10
  %42 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32* %41)
  %43 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %44 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %46 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %45, i32 0, i32 10
  %47 = load i32, i32* @PI_AV, align 4
  %48 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %49 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %48, i32 0, i32 9
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @taskqueue_start_threads(i32* %46, i32 1, i32 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %53 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %52, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %55 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %54, i32 0, i32 2
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* @DMAR_IQA_QS_DEF, align 4
  store i32 %56, i32* %6, align 4
  %57 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @DMAR_IQA_QS_MAX, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %29
  %62 = load i32, i32* @DMAR_IQA_QS_MAX, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %29
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 1, %65
  %67 = load i64, i64* @PAGE_SIZE, align 8
  %68 = mul i64 %66, %67
  %69 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %70 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %72 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DMAR_IQ_DESCR_SZ, align 8
  %75 = sub i64 %73, %74
  %76 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %77 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %76, i32 0, i32 7
  store i64 %75, i64* %77, align 8
  %78 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %79 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @M_WAITOK, align 4
  %82 = load i32, i32* @M_ZERO, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @dmar_high, align 4
  %85 = load i64, i64* @PAGE_SIZE, align 8
  %86 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %87 = call i32 @kmem_alloc_contig(i64 %80, i32 %83, i32 0, i32 %84, i64 %85, i32 0, i32 %86)
  %88 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %89 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %91 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %90, i32 0, i32 5
  %92 = ptrtoint i32* %91 to i32
  %93 = call i8* @pmap_kextract(i32 %92)
  %94 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %95 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %94, i32 0, i32 6
  store i8* %93, i8** %95, align 8
  %96 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %97 = call i32 @DMAR_LOCK(%struct.dmar_unit* %96)
  %98 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %99 = load i32, i32* @DMAR_IQT_REG, align 4
  %100 = call i32 @dmar_write8(%struct.dmar_unit* %98, i32 %99, i32 0)
  %101 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %102 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @pmap_kextract(i32 %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %110 = load i32, i32* @DMAR_IQA_REG, align 4
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @dmar_write8(%struct.dmar_unit* %109, i32 %110, i32 %111)
  %113 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %114 = call i32 @dmar_enable_qi(%struct.dmar_unit* %113)
  %115 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %116 = load i32, i32* @DMAR_ICS_REG, align 4
  %117 = call i32 @dmar_read4(%struct.dmar_unit* %115, i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @DMAR_ICS_IWC, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %63
  %123 = load i32, i32* @DMAR_ICS_IWC, align 4
  store i32 %123, i32* %5, align 4
  %124 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %125 = load i32, i32* @DMAR_ICS_REG, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @dmar_write4(%struct.dmar_unit* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %63
  %129 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %130 = call i32 @dmar_enable_qi_intr(%struct.dmar_unit* %129)
  %131 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %132 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %131)
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %128, %28, %17
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @DMAR_HAS_QI(%struct.dmar_unit*) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.dmar_unit*) #1

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @kmem_alloc_contig(i64, i32, i32, i32, i64, i32, i32) #1

declare dso_local i8* @pmap_kextract(i32) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_write8(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @dmar_enable_qi(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_read4(%struct.dmar_unit*, i32) #1

declare dso_local i32 @dmar_write4(%struct.dmar_unit*, i32, i32) #1

declare dso_local i32 @dmar_enable_qi_intr(%struct.dmar_unit*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
