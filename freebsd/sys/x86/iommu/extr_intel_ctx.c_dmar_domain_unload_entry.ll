; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_unload_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_unload_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_map_entry = type { i64, i64, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.dmar_unit* }
%struct.dmar_unit = type { i32, i64 }

@DMAR_MAP_ENTRY_QI_NF = common dso_local global i32 0, align 4
@dmamap_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_domain_unload_entry(%struct.dmar_map_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_map_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_unit*, align 8
  store %struct.dmar_map_entry* %0, %struct.dmar_map_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %7 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.dmar_unit*, %struct.dmar_unit** %9, align 8
  store %struct.dmar_unit* %10, %struct.dmar_unit** %5, align 8
  %11 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %12 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %2
  %16 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %17 = call i32 @DMAR_LOCK(%struct.dmar_unit* %16)
  %18 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %19 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %22 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %25 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %28 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %26, %29
  %31 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %32 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %31, i32 0, i32 4
  %33 = call i32 @dmar_qi_invalidate_locked(%struct.TYPE_3__* %20, i64 %23, i64 %30, i32* %32, i32 1)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %15
  %37 = load i32, i32* @DMAR_MAP_ENTRY_QI_NF, align 4
  %38 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %39 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36, %15
  %43 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %44 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %43, i32 0, i32 0
  %45 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %46 = load i32, i32* @dmamap_link, align 4
  %47 = call i32 @TAILQ_INSERT_TAIL(i32* %44, %struct.dmar_map_entry* %45, i32 %46)
  %48 = load %struct.dmar_unit*, %struct.dmar_unit** %5, align 8
  %49 = call i32 @DMAR_UNLOCK(%struct.dmar_unit* %48)
  br label %68

50:                                               ; preds = %2
  %51 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %52 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %55 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %58 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %61 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = call i32 @domain_flush_iotlb_sync(%struct.TYPE_3__* %53, i64 %56, i64 %63)
  %65 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @dmar_domain_free_entry(%struct.dmar_map_entry* %65, i32 %66)
  br label %68

68:                                               ; preds = %50, %42
  ret void
}

declare dso_local i32 @DMAR_LOCK(%struct.dmar_unit*) #1

declare dso_local i32 @dmar_qi_invalidate_locked(%struct.TYPE_3__*, i64, i64, i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.dmar_map_entry*, i32) #1

declare dso_local i32 @DMAR_UNLOCK(%struct.dmar_unit*) #1

declare dso_local i32 @domain_flush_iotlb_sync(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @dmar_domain_free_entry(%struct.dmar_map_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
