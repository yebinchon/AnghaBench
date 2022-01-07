; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_free_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_ctx.c_dmar_domain_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_map_entry = type { i32, %struct.dmar_domain* }
%struct.dmar_domain = type { i32 }

@DMAR_MAP_ENTRY_RMRR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmar_domain_free_entry(%struct.dmar_map_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_map_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_domain*, align 8
  store %struct.dmar_map_entry* %0, %struct.dmar_map_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %7 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %6, i32 0, i32 1
  %8 = load %struct.dmar_domain*, %struct.dmar_domain** %7, align 8
  store %struct.dmar_domain* %8, %struct.dmar_domain** %5, align 8
  %9 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %10 = call i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain* %9)
  %11 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %12 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DMAR_MAP_ENTRY_RMRR, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %19 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %20 = call i32 @dmar_gas_free_region(%struct.dmar_domain* %18, %struct.dmar_map_entry* %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %23 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %24 = call i32 @dmar_gas_free_space(%struct.dmar_domain* %22, %struct.dmar_map_entry* %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %27 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.dmar_domain*, %struct.dmar_domain** %5, align 8
  %32 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %33 = call i32 @dmar_gas_free_entry(%struct.dmar_domain* %31, %struct.dmar_map_entry* %32)
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %3, align 8
  %36 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %34, %30
  ret void
}

declare dso_local i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain*) #1

declare dso_local i32 @dmar_gas_free_region(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

declare dso_local i32 @dmar_gas_free_space(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

declare dso_local i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @dmar_gas_free_entry(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
