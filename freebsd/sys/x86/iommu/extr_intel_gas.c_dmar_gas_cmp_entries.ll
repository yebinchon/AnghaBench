; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_cmp_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_cmp_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_map_entry = type { i64, i64 }

@.str = private unnamed_addr constant [29 x i8] c"inverted entry %p (%jx, %jx)\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"overlapping entries %p (%jx, %jx) %p (%jx, %jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_map_entry*, %struct.dmar_map_entry*)* @dmar_gas_cmp_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_gas_cmp_entries(%struct.dmar_map_entry* %0, %struct.dmar_map_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmar_map_entry*, align 8
  %5 = alloca %struct.dmar_map_entry*, align 8
  store %struct.dmar_map_entry* %0, %struct.dmar_map_entry** %4, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %5, align 8
  %6 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %7 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %10 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %8, %11
  %13 = zext i1 %12 to i32
  %14 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %15 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %16 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %20 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %13, i8* %24)
  %26 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %27 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %30 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %35 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %36 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %40 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @KASSERT(i32 %33, i8* %44)
  %46 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %47 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %50 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %48, %51
  br i1 %52, label %77, label %53

53:                                               ; preds = %2
  %54 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %55 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %58 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %77, label %61

61:                                               ; preds = %53
  %62 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %63 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %66 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %71 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %74 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br label %77

77:                                               ; preds = %69, %61, %53, %2
  %78 = phi i1 [ true, %61 ], [ true, %53 ], [ true, %2 ], [ %76, %69 ]
  %79 = zext i1 %78 to i32
  %80 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %81 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %82 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %86 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %90 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %91 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %95 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @KASSERT(i32 %79, i8* %99)
  %101 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %102 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %105 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %120

109:                                              ; preds = %77
  %110 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %111 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %114 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %120

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %117, %108
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
