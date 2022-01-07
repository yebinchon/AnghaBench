; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_uppermatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_uppermatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_gas_match_args = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dmar_map_entry = type { i64, i32 }

@dmar_gas_entries_tree = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"no prev %p %jx\00", align 1
@DMAR_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"no next %p %jx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_gas_match_args*)* @dmar_gas_uppermatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_gas_uppermatch(%struct.dmar_gas_match_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmar_gas_match_args*, align 8
  %4 = alloca %struct.dmar_map_entry*, align 8
  %5 = alloca %struct.dmar_map_entry*, align 8
  %6 = alloca %struct.dmar_map_entry, align 8
  store %struct.dmar_gas_match_args* %0, %struct.dmar_gas_match_args** %3, align 8
  %7 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %8 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %6, i32 0, i32 0
  store i64 %11, i64* %12, align 8
  %13 = load i32, i32* @dmar_gas_entries_tree, align 4
  %14 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %15 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = call %struct.dmar_map_entry* @RB_NFIND(i32 %13, i32* %17, %struct.dmar_map_entry* %6)
  store %struct.dmar_map_entry* %18, %struct.dmar_map_entry** %4, align 8
  %19 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %20 = icmp eq %struct.dmar_map_entry* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %136

23:                                               ; preds = %1
  %24 = load i32, i32* @dmar_gas_entries_tree, align 4
  %25 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %26 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %30 = call %struct.dmar_map_entry* @RB_PREV(i32 %24, i32* %28, %struct.dmar_map_entry* %29)
  store %struct.dmar_map_entry* %30, %struct.dmar_map_entry** %5, align 8
  %31 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %32 = icmp ne %struct.dmar_map_entry* %31, null
  %33 = zext i1 %32 to i32
  %34 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %35 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %6, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @KASSERT(i32 %33, i8* %41)
  br label %43

43:                                               ; preds = %135, %23
  %44 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %45 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DMAR_PAGE_SIZE, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %50 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i64 %48, i64* %52, align 8
  %53 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %54 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %59 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %57, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %43
  %65 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %66 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %65, i32 0, i32 1
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %71 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i64 %69, i64* %73, align 8
  br label %74

74:                                               ; preds = %64, %43
  %75 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %76 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %81 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @roundup2(i64 %79, i32 %84)
  %86 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %87 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  %90 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %91 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %92 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %93 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @dmar_gas_match_one(%struct.dmar_gas_match_args* %90, %struct.dmar_map_entry* %91, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %74
  %100 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %101 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %102 = call i32 @dmar_gas_match_insert(%struct.dmar_gas_match_args* %100, %struct.dmar_map_entry* %101)
  store i32 0, i32* %2, align 4
  br label %136

103:                                              ; preds = %74
  %104 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  store %struct.dmar_map_entry* %104, %struct.dmar_map_entry** %5, align 8
  %105 = load i32, i32* @dmar_gas_entries_tree, align 4
  %106 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %107 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %111 = call %struct.dmar_map_entry* @RB_NEXT(i32 %105, i32* %109, %struct.dmar_map_entry* %110)
  store %struct.dmar_map_entry* %111, %struct.dmar_map_entry** %4, align 8
  %112 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %113 = icmp ne %struct.dmar_map_entry* %112, null
  %114 = zext i1 %113 to i32
  %115 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %116 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %6, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 @KASSERT(i32 %114, i8* %122)
  %124 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %125 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %128 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp sge i32 %126, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %103
  %134 = load i32, i32* @ENOMEM, align 4
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %103
  br label %43

136:                                              ; preds = %133, %99, %21
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.dmar_map_entry* @RB_NFIND(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local %struct.dmar_map_entry* @RB_PREV(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i64 @dmar_gas_match_one(%struct.dmar_gas_match_args*, %struct.dmar_map_entry*, i32) #1

declare dso_local i32 @dmar_gas_match_insert(%struct.dmar_gas_match_args*, %struct.dmar_map_entry*) #1

declare dso_local %struct.dmar_map_entry* @RB_NEXT(i32, i32*, %struct.dmar_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
