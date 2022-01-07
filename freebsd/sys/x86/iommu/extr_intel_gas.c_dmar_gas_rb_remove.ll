; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_rb_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_rb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dmar_map_entry = type { i32 }

@dmar_gas_entries_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_domain*, %struct.dmar_map_entry*)* @dmar_gas_rb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_gas_rb_remove(%struct.dmar_domain* %0, %struct.dmar_map_entry* %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca %struct.dmar_map_entry*, align 8
  %5 = alloca %struct.dmar_map_entry*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %4, align 8
  %6 = load i32, i32* @dmar_gas_entries_tree, align 4
  %7 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %8 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %7, i32 0, i32 0
  %9 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %10 = call %struct.dmar_map_entry* @RB_PREV(i32 %6, i32* %8, %struct.dmar_map_entry* %9)
  store %struct.dmar_map_entry* %10, %struct.dmar_map_entry** %5, align 8
  %11 = load i32, i32* @dmar_gas_entries_tree, align 4
  %12 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %13 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %12, i32 0, i32 0
  %14 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %15 = call i32 @RB_REMOVE(i32 %11, i32* %13, %struct.dmar_map_entry* %14)
  %16 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %17 = icmp ne %struct.dmar_map_entry* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %20 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %21 = call i32 @dmar_gas_fix_free(%struct.dmar_domain* %19, %struct.dmar_map_entry* %20)
  br label %22

22:                                               ; preds = %18, %2
  ret void
}

declare dso_local %struct.dmar_map_entry* @RB_PREV(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local i32 @dmar_gas_fix_free(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
