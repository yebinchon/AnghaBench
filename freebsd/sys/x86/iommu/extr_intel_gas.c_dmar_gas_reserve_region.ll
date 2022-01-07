; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_reserve_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_reserve_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i32 }
%struct.dmar_map_entry = type { i32, i8*, i8* }

@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@DMAR_GM_CANWAIT = common dso_local global i32 0, align 4
@DMAR_MAP_ENTRY_UNMAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmar_gas_reserve_region(%struct.dmar_domain* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.dmar_domain*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dmar_map_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %10 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %11 = call %struct.dmar_map_entry* @dmar_gas_alloc_entry(%struct.dmar_domain* %9, i32 %10)
  store %struct.dmar_map_entry* %11, %struct.dmar_map_entry** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %7, align 8
  %14 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %7, align 8
  %17 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %19 = call i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain* %18)
  %20 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %21 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %7, align 8
  %22 = load i32, i32* @DMAR_GM_CANWAIT, align 4
  %23 = call i32 @dmar_gas_alloc_region(%struct.dmar_domain* %20, %struct.dmar_map_entry* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* @DMAR_MAP_ENTRY_UNMAPPED, align 4
  %28 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %7, align 8
  %29 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %26, %3
  %33 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %34 = call i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain* %33)
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.dmar_domain*, %struct.dmar_domain** %4, align 8
  %39 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %7, align 8
  %40 = call i32 @dmar_gas_free_entry(%struct.dmar_domain* %38, %struct.dmar_map_entry* %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local %struct.dmar_map_entry* @dmar_gas_alloc_entry(%struct.dmar_domain*, i32) #1

declare dso_local i32 @DMAR_DOMAIN_LOCK(%struct.dmar_domain*) #1

declare dso_local i32 @dmar_gas_alloc_region(%struct.dmar_domain*, %struct.dmar_map_entry*, i32) #1

declare dso_local i32 @DMAR_DOMAIN_UNLOCK(%struct.dmar_domain*) #1

declare dso_local i32 @dmar_gas_free_entry(%struct.dmar_domain*, %struct.dmar_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
