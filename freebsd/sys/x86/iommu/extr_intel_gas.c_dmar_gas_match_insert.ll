; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_match_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_match_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_gas_match_args = type { i64, %struct.dmar_map_entry*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dmar_map_entry = type { i64, i64, i64, i32 }

@dmar_gas_entries_tree = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"dmar_gas_match_insert hole failed %p prev (%jx, %jx) free_after %jx next (%jx, %jx) entry (%jx, %jx)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"found dup %p start %jx size %jx\00", align 1
@DMAR_MAP_ENTRY_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"entry %p prev %p inserted prev %p\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"entry %p next %p inserted next %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmar_gas_match_args*, %struct.dmar_map_entry*)* @dmar_gas_match_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmar_gas_match_insert(%struct.dmar_gas_match_args* %0, %struct.dmar_map_entry* %1) #0 {
  %3 = alloca %struct.dmar_gas_match_args*, align 8
  %4 = alloca %struct.dmar_map_entry*, align 8
  %5 = alloca %struct.dmar_map_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.dmar_gas_match_args* %0, %struct.dmar_gas_match_args** %3, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %4, align 8
  %7 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %8 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %7, i32 0, i32 1
  %9 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %8, align 8
  %10 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %13 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %17 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %16, i32 0, i32 1
  %18 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %17, align 8
  %19 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %18, i32 0, i32 0
  store i64 %15, i64* %19, align 8
  %20 = load i32, i32* @dmar_gas_entries_tree, align 4
  %21 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %22 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %26 = call %struct.dmar_map_entry* @RB_NEXT(i32 %20, i32* %24, %struct.dmar_map_entry* %25)
  store %struct.dmar_map_entry* %26, %struct.dmar_map_entry** %5, align 8
  %27 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %28 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %31 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %30, i32 0, i32 1
  %32 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %31, align 8
  %33 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %29, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %2
  %37 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %38 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %41 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %40, i32 0, i32 1
  %42 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %41, align 8
  %43 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %39, %44
  %46 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %47 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %45, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %36
  %51 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %52 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %55 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %54, i32 0, i32 1
  %56 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %55, align 8
  %57 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %53, %58
  br label %60

60:                                               ; preds = %50, %36, %2
  %61 = phi i1 [ false, %36 ], [ false, %2 ], [ %59, %50 ]
  %62 = zext i1 %61 to i32
  %63 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %64 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %67 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %71 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %75 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %79 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %83 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %87 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %86, i32 0, i32 1
  %88 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %87, align 8
  %89 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %93 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %92, i32 0, i32 1
  %94 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %93, align 8
  %95 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @KASSERT(i32 %62, i8* %99)
  %101 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %102 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %101, i32 0, i32 1
  %103 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %102, align 8
  %104 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %107 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %105, %108
  %110 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %111 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %113 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %116 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %115, i32 0, i32 1
  %117 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %116, align 8
  %118 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %114, %119
  %121 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %122 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %121, i32 0, i32 1
  %123 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %122, align 8
  %124 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %123, i32 0, i32 2
  store i64 %120, i64* %124, align 8
  %125 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %126 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %129 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %128, i32 0, i32 1
  %130 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %129, align 8
  %131 = call i32 @dmar_gas_rb_insert(%struct.TYPE_2__* %127, %struct.dmar_map_entry* %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %134 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %133, i32 0, i32 2
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %137 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %136, i32 0, i32 1
  %138 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %137, align 8
  %139 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %143 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to i8*
  %148 = call i32 @KASSERT(i32 %132, i8* %147)
  %149 = load i32, i32* @DMAR_MAP_ENTRY_MAP, align 4
  %150 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %151 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %150, i32 0, i32 1
  %152 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %151, align 8
  %153 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %152, i32 0, i32 3
  store i32 %149, i32* %153, align 8
  %154 = load i32, i32* @dmar_gas_entries_tree, align 4
  %155 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %156 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %155, i32 0, i32 2
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %160 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %159, i32 0, i32 1
  %161 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %160, align 8
  %162 = call %struct.dmar_map_entry* @RB_PREV(i32 %154, i32* %158, %struct.dmar_map_entry* %161)
  %163 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %164 = icmp eq %struct.dmar_map_entry* %162, %163
  %165 = zext i1 %164 to i32
  %166 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %167 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %166, i32 0, i32 1
  %168 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %167, align 8
  %169 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %4, align 8
  %170 = load i32, i32* @dmar_gas_entries_tree, align 4
  %171 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %172 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %171, i32 0, i32 2
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %176 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %175, i32 0, i32 1
  %177 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %176, align 8
  %178 = call %struct.dmar_map_entry* @RB_PREV(i32 %170, i32* %174, %struct.dmar_map_entry* %177)
  %179 = bitcast %struct.dmar_map_entry* %178 to i8*
  %180 = call i32 @KASSERT(i32 %165, i8* %179)
  %181 = load i32, i32* @dmar_gas_entries_tree, align 4
  %182 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %183 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  %186 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %187 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %186, i32 0, i32 1
  %188 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %187, align 8
  %189 = call %struct.dmar_map_entry* @RB_NEXT(i32 %181, i32* %185, %struct.dmar_map_entry* %188)
  %190 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %191 = icmp eq %struct.dmar_map_entry* %189, %190
  %192 = zext i1 %191 to i32
  %193 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %194 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %193, i32 0, i32 1
  %195 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %194, align 8
  %196 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %197 = load i32, i32* @dmar_gas_entries_tree, align 4
  %198 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %199 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %198, i32 0, i32 2
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %3, align 8
  %203 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %202, i32 0, i32 1
  %204 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %203, align 8
  %205 = call %struct.dmar_map_entry* @RB_NEXT(i32 %197, i32* %201, %struct.dmar_map_entry* %204)
  %206 = bitcast %struct.dmar_map_entry* %205 to i8*
  %207 = call i32 @KASSERT(i32 %192, i8* %206)
  ret void
}

declare dso_local %struct.dmar_map_entry* @RB_NEXT(i32, i32*, %struct.dmar_map_entry*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dmar_gas_rb_insert(%struct.TYPE_2__*, %struct.dmar_map_entry*) #1

declare dso_local %struct.dmar_map_entry* @RB_PREV(i32, i32*, %struct.dmar_map_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
