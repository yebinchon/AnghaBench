; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_free_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dmar_map_entry = type { i32 }

@DMAR_MAP_ENTRY_PLACE = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_RMRR = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"permanent entry %p %p\00", align 1
@dmar_check_free = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_gas_free_space(%struct.dmar_domain* %0, %struct.dmar_map_entry* %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.dmar_map_entry*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %4, align 8
  %5 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %6 = call i32 @DMAR_DOMAIN_ASSERT_LOCKED(%struct.dmar_domain* %5)
  %7 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %8 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DMAR_MAP_ENTRY_PLACE, align 4
  %11 = load i32, i32* @DMAR_MAP_ENTRY_RMRR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DMAR_MAP_ENTRY_MAP, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = load i32, i32* @DMAR_MAP_ENTRY_MAP, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %20 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %21 = bitcast %struct.dmar_map_entry* %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %24 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %25 = call i32 @dmar_gas_rb_remove(%struct.dmar_domain* %23, %struct.dmar_map_entry* %24)
  %26 = load i32, i32* @DMAR_MAP_ENTRY_MAP, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %29 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  ret void
}

declare dso_local i32 @DMAR_DOMAIN_ASSERT_LOCKED(%struct.dmar_domain*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dmar_gas_rb_remove(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
