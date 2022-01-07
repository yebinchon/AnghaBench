; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_fix_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_fix_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i64, i32 }
%struct.dmar_map_entry = type { i64, i64, i64 }

@dmar_gas_entries_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*, %struct.dmar_map_entry*)* @dmar_gas_fix_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_gas_fix_free(%struct.dmar_domain* %0, %struct.dmar_map_entry* %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.dmar_map_entry*, align 8
  %5 = alloca %struct.dmar_map_entry*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %4, align 8
  %6 = load i32, i32* @dmar_gas_entries_tree, align 4
  %7 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %8 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %7, i32 0, i32 1
  %9 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %10 = call %struct.dmar_map_entry* @RB_NEXT(i32 %6, i32* %8, %struct.dmar_map_entry* %9)
  store %struct.dmar_map_entry* %10, %struct.dmar_map_entry** %5, align 8
  %11 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %12 = icmp ne %struct.dmar_map_entry* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %15 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %19 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i64 [ %16, %13 ], [ %20, %17 ]
  %23 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %24 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %28 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %30 = call i32 @dmar_gas_augment_entry(%struct.dmar_map_entry* %29)
  ret void
}

declare dso_local %struct.dmar_map_entry* @RB_NEXT(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local i32 @dmar_gas_augment_entry(%struct.dmar_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
