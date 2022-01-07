; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_free_ctx_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_free_ctx_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_unit = type { i32, i64 }
%struct.dmar_ctx = type { i32, i32, %struct.dmar_domain* }
%struct.dmar_domain = type { i32 }
%struct.sf_buf = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"dmar %p ctx %p refs %u\00", align 1
@DMAR_CTX_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"lost ref on disabled ctx %p\00", align 1
@TD_PREP_PINNED_ASSERT = common dso_local global i32 0, align 4
@TD_PINNED_ASSERT = common dso_local global i32 0, align 4
@DMAR_ECAP_DI = common dso_local global i32 0, align 4
@M_DMAR_CTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_free_ctx_locked(%struct.dmar_unit* %0, %struct.dmar_ctx* %1) #0 {
  %3 = alloca %struct.dmar_unit*, align 8
  %4 = alloca %struct.dmar_ctx*, align 8
  %5 = alloca %struct.sf_buf*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.dmar_domain*, align 8
  store %struct.dmar_unit* %0, %struct.dmar_unit** %3, align 8
  store %struct.dmar_ctx* %1, %struct.dmar_ctx** %4, align 8
  %8 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %9 = call i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit* %8)
  %10 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 1
  %14 = zext i1 %13 to i32
  %15 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %16 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %17 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %14, i8* %21)
  %23 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %33 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %32)
  br label %133

34:                                               ; preds = %2
  %35 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DMAR_CTX_DISABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %43 = bitcast %struct.dmar_ctx* %42 to i8*
  %44 = call i32 @KASSERT(i32 %41, i8* %43)
  %45 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %46 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %45)
  %47 = load i32, i32* @TD_PREP_PINNED_ASSERT, align 4
  %48 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %49 = call %struct.TYPE_4__* @dmar_map_ctx_entry(%struct.dmar_ctx* %48, %struct.sf_buf** %5)
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %6, align 8
  %50 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %51 = call i32 @DMAR_LOCK(%struct.dmar_unit* %50)
  %52 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %58 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %59 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @KASSERT(i32 %56, i8* %63)
  %65 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %66 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %79

69:                                               ; preds = %34
  %70 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %75 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %74)
  %76 = load %struct.sf_buf*, %struct.sf_buf** %5, align 8
  %77 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %76)
  %78 = load i32, i32* @TD_PINNED_ASSERT, align 4
  br label %133

79:                                               ; preds = %34
  %80 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %81 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DMAR_CTX_DISABLED, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %88 = bitcast %struct.dmar_ctx* %87 to i8*
  %89 = call i32 @KASSERT(i32 %86, i8* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = call i32 @dmar_pte_clear(i32* %91)
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %97 = call i32 @dmar_flush_ctx_to_ram(%struct.dmar_unit* %95, %struct.TYPE_4__* %96)
  %98 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %99 = call i32 @dmar_inv_ctx_glob(%struct.dmar_unit* %98)
  %100 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %101 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @DMAR_ECAP_DI, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %79
  %107 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %108 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %113 = call i32 @dmar_qi_invalidate_iotlb_glob_locked(%struct.dmar_unit* %112)
  br label %117

114:                                              ; preds = %106
  %115 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %116 = call i32 @dmar_inv_iotlb_glob(%struct.dmar_unit* %115)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %79
  %119 = load %struct.sf_buf*, %struct.sf_buf** %5, align 8
  %120 = call i32 @dmar_unmap_pgtbl(%struct.sf_buf* %119)
  %121 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %122 = getelementptr inbounds %struct.dmar_ctx, %struct.dmar_ctx* %121, i32 0, i32 2
  %123 = load %struct.dmar_domain*, %struct.dmar_domain** %122, align 8
  store %struct.dmar_domain* %123, %struct.dmar_domain** %7, align 8
  %124 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %125 = call i32 @dmar_ctx_unlink(%struct.dmar_ctx* %124)
  %126 = load %struct.dmar_ctx*, %struct.dmar_ctx** %4, align 8
  %127 = load i32, i32* @M_DMAR_CTX, align 4
  %128 = call i32 @free(%struct.dmar_ctx* %126, i32 %127)
  %129 = load %struct.dmar_unit*, %struct.dmar_unit** %3, align 8
  %130 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %131 = call i32 @dmar_unref_domain_locked(%struct.dmar_unit* %129, %struct.dmar_domain* %130)
  %132 = load i32, i32* @TD_PINNED_ASSERT, align 4
  br label %133

133:                                              ; preds = %118, %69, %27
  ret void
}

declare dso_local i32 @DMAR_ASSERT_LOCKED(%struct.dmar_unit*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local %struct.TYPE_4__* @dmar_map_ctx_entry(%struct.dmar_ctx*, %struct.sf_buf**) #1

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_unmap_pgtbl(%struct.sf_buf*) #1

declare dso_local i32 @dmar_pte_clear(i32*) #1

declare dso_local i32 @dmar_flush_ctx_to_ram(%struct.dmar_unit*, %struct.TYPE_4__*) #1

declare dso_local i32 @dmar_inv_ctx_glob(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_invalidate_iotlb_glob_locked(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_inv_iotlb_glob(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_ctx_unlink(%struct.dmar_ctx*) #1

declare dso_local i32 @free(%struct.dmar_ctx*, i32) #1

declare dso_local i32 @dmar_unref_domain_locked(%struct.dmar_unit*, %struct.dmar_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
