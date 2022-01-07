; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_free_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_free_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32, i32, i32 }
%struct.dmar_map_entry = type { i32 }

@DMAR_MAP_ENTRY_PLACE = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_RMRR = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"non-RMRR entry %p %p\00", align 1
@dmar_gas_entries_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_gas_free_region(%struct.dmar_domain* %0, %struct.dmar_map_entry* %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.dmar_map_entry*, align 8
  %5 = alloca %struct.dmar_map_entry*, align 8
  %6 = alloca %struct.dmar_map_entry*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %4, align 8
  %7 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %8 = call i32 @DMAR_DOMAIN_ASSERT_LOCKED(%struct.dmar_domain* %7)
  %9 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %10 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DMAR_MAP_ENTRY_PLACE, align 4
  %13 = load i32, i32* @DMAR_MAP_ENTRY_RMRR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DMAR_MAP_ENTRY_MAP, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %11, %16
  %18 = load i32, i32* @DMAR_MAP_ENTRY_RMRR, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %22 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %23 = bitcast %struct.dmar_map_entry* %22 to i8*
  %24 = call i32 @KASSERT(i32 %20, i8* %23)
  %25 = load i32, i32* @dmar_gas_entries_tree, align 4
  %26 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %27 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %26, i32 0, i32 2
  %28 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %29 = call %struct.dmar_map_entry* @RB_PREV(i32 %25, i32* %27, %struct.dmar_map_entry* %28)
  store %struct.dmar_map_entry* %29, %struct.dmar_map_entry** %6, align 8
  %30 = load i32, i32* @dmar_gas_entries_tree, align 4
  %31 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %32 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %31, i32 0, i32 2
  %33 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %34 = call %struct.dmar_map_entry* @RB_NEXT(i32 %30, i32* %32, %struct.dmar_map_entry* %33)
  store %struct.dmar_map_entry* %34, %struct.dmar_map_entry** %5, align 8
  %35 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %36 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %37 = call i32 @dmar_gas_rb_remove(%struct.dmar_domain* %35, %struct.dmar_map_entry* %36)
  %38 = load i32, i32* @DMAR_MAP_ENTRY_RMRR, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %41 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %45 = icmp eq %struct.dmar_map_entry* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %2
  %47 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %48 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %49 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dmar_gas_rb_insert(%struct.dmar_domain* %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %2
  %53 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %54 = icmp eq %struct.dmar_map_entry* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %57 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %58 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dmar_gas_rb_insert(%struct.dmar_domain* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @DMAR_DOMAIN_ASSERT_LOCKED(%struct.dmar_domain*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.dmar_map_entry* @RB_PREV(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local %struct.dmar_map_entry* @RB_NEXT(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local i32 @dmar_gas_rb_remove(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

declare dso_local i32 @dmar_gas_rb_insert(%struct.dmar_domain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
