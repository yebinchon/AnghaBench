; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_find_space.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_find_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_domain = type { i64, i32 }
%struct.bus_dma_tag_common = type { i64, i64 }
%struct.dmar_map_entry = type { i64 }
%struct.dmar_gas_match_args = type { i32, i32, %struct.dmar_map_entry*, i32, %struct.bus_dma_tag_common*, %struct.dmar_domain* }

@.str = private unnamed_addr constant [18 x i8] c"dirty entry %p %p\00", align 1
@DMAR_PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"size %jx\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"error %d from dmar_gas_lowermatch\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"error %d from dmar_gas_uppermatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_domain*, %struct.bus_dma_tag_common*, i32, i32, i32, %struct.dmar_map_entry*)* @dmar_gas_find_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_gas_find_space(%struct.dmar_domain* %0, %struct.bus_dma_tag_common* %1, i32 %2, i32 %3, i32 %4, %struct.dmar_map_entry* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmar_domain*, align 8
  %9 = alloca %struct.bus_dma_tag_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dmar_map_entry*, align 8
  %14 = alloca %struct.dmar_gas_match_args, align 8
  %15 = alloca i32, align 4
  store %struct.dmar_domain* %0, %struct.dmar_domain** %8, align 8
  store %struct.bus_dma_tag_common* %1, %struct.bus_dma_tag_common** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.dmar_map_entry* %5, %struct.dmar_map_entry** %13, align 8
  %16 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %17 = call i32 @DMAR_DOMAIN_ASSERT_LOCKED(%struct.dmar_domain* %16)
  %18 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %13, align 8
  %19 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %24 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %13, align 8
  %25 = bitcast %struct.dmar_map_entry* %24 to i8*
  %26 = call i32 @KASSERT(i32 %22, i8* %25)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @DMAR_PAGE_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %31, i8* %34)
  %36 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %37 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %14, i32 0, i32 5
  store %struct.dmar_domain* %36, %struct.dmar_domain** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %14, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %14, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %9, align 8
  %43 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %14, i32 0, i32 4
  store %struct.bus_dma_tag_common* %42, %struct.bus_dma_tag_common** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %14, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %13, align 8
  %47 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %14, i32 0, i32 2
  store %struct.dmar_map_entry* %46, %struct.dmar_map_entry** %47, align 8
  %48 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %9, align 8
  %49 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %6
  %53 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %54 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %53, i32 0, i32 1
  %55 = call i32 @RB_ROOT(i32* %54)
  %56 = call i32 @dmar_gas_lowermatch(%struct.dmar_gas_match_args* %14, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %90

60:                                               ; preds = %52
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = call i32 @KASSERT(i32 %64, i8* %67)
  br label %69

69:                                               ; preds = %60, %6
  %70 = load %struct.bus_dma_tag_common*, %struct.bus_dma_tag_common** %9, align 8
  %71 = getelementptr inbounds %struct.bus_dma_tag_common, %struct.bus_dma_tag_common* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.dmar_domain*, %struct.dmar_domain** %8, align 8
  %74 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %7, align 4
  br label %90

79:                                               ; preds = %69
  %80 = call i32 @dmar_gas_uppermatch(%struct.dmar_gas_match_args* %14)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @KASSERT(i32 %84, i8* %87)
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %79, %77, %59
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @DMAR_DOMAIN_ASSERT_LOCKED(%struct.dmar_domain*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dmar_gas_lowermatch(%struct.dmar_gas_match_args*, i32) #1

declare dso_local i32 @RB_ROOT(i32*) #1

declare dso_local i32 @dmar_gas_uppermatch(%struct.dmar_gas_match_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
