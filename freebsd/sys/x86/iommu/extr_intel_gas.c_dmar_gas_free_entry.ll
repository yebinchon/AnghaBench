; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_free_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dmar_map_entry = type { %struct.dmar_domain* }

@.str = private unnamed_addr constant [52 x i8] c"mismatched free domain %p entry %p entry->domain %p\00", align 1
@dmar_map_entry_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_gas_free_entry(%struct.dmar_domain* %0, %struct.dmar_map_entry* %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.dmar_map_entry*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %4, align 8
  %5 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %6 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %7 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %6, i32 0, i32 0
  %8 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  %9 = icmp eq %struct.dmar_domain* %5, %8
  %10 = zext i1 %9 to i32
  %11 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %12 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %13 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %14 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %13, i32 0, i32 0
  %15 = load %struct.dmar_domain*, %struct.dmar_domain** %14, align 8
  %16 = bitcast %struct.dmar_domain* %15 to i8*
  %17 = call i32 @KASSERT(i32 %10, i8* %16)
  %18 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %19 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %18, i32 0, i32 0
  %20 = call i32 @atomic_subtract_int(i32* %19, i32 1)
  %21 = load i32, i32* @dmar_map_entry_zone, align 4
  %22 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %23 = call i32 @uma_zfree(i32 %21, %struct.dmar_map_entry* %22)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.dmar_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
