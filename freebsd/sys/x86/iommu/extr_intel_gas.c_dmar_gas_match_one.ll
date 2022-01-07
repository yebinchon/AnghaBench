; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_match_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_match_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_gas_match_args = type { i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.dmar_map_entry = type { i64, i64 }

@DMAR_PAGE_SIZE = common dso_local global i64 0, align 8
@DMAR_GM_CANSPLIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmar_gas_match_args*, %struct.dmar_map_entry*, i64)* @dmar_gas_match_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_gas_match_one(%struct.dmar_gas_match_args* %0, %struct.dmar_map_entry* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_gas_match_args*, align 8
  %6 = alloca %struct.dmar_map_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dmar_gas_match_args* %0, %struct.dmar_gas_match_args** %5, align 8
  store %struct.dmar_map_entry* %1, %struct.dmar_map_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %11 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %16 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load i64, i64* %7, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %180

22:                                               ; preds = %3
  %23 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %24 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %29 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DMAR_PAGE_SIZE, align 8
  %32 = add nsw i64 %30, %31
  %33 = icmp slt i64 %27, %32
  br i1 %33, label %58, label %34

34:                                               ; preds = %22
  %35 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %36 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %41 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %45 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load i64, i64* @DMAR_PAGE_SIZE, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %51 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %54 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = icmp sgt i64 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %34, %22
  store i32 0, i32* %4, align 4
  br label %180

59:                                               ; preds = %34
  %60 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %61 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %66 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %70 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %73 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %72, i32 0, i32 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @dmar_test_boundary(i64 %68, i64 %71, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %180

80:                                               ; preds = %59
  %81 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %82 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %87 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %91 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %90, i32 0, i32 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %89, %94
  %96 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %97 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %96, i32 0, i32 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @rounddown2(i64 %95, i64 %100)
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %104 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %103, i32 0, i32 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @roundup2(i64 %102, i32 %107)
  store i64 %108, i64* %9, align 8
  %109 = load i64, i64* %9, align 8
  %110 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %111 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %115 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load i64, i64* @DMAR_PAGE_SIZE, align 8
  %119 = add nsw i64 %117, %118
  %120 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %121 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %6, align 8
  %124 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %122, %125
  %127 = icmp sle i64 %119, %126
  br i1 %127, label %128, label %162

128:                                              ; preds = %80
  %129 = load i64, i64* %9, align 8
  %130 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %131 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %135 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %133, %136
  %138 = load i64, i64* %7, align 8
  %139 = icmp sle i64 %137, %138
  br i1 %139, label %140, label %162

140:                                              ; preds = %128
  %141 = load i64, i64* %9, align 8
  %142 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %143 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %147 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %150 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %149, i32 0, i32 4
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = call i64 @dmar_test_boundary(i64 %145, i64 %148, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %140
  %157 = load i64, i64* %9, align 8
  %158 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %159 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %158, i32 0, i32 3
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i64 %157, i64* %161, align 8
  store i32 1, i32* %4, align 4
  br label %180

162:                                              ; preds = %140, %128, %80
  %163 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %164 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @DMAR_GM_CANSPLIT, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %179

169:                                              ; preds = %162
  %170 = load i64, i64* %8, align 8
  %171 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %172 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %171, i32 0, i32 3
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = sub nsw i64 %170, %175
  %177 = load %struct.dmar_gas_match_args*, %struct.dmar_gas_match_args** %5, align 8
  %178 = getelementptr inbounds %struct.dmar_gas_match_args, %struct.dmar_gas_match_args* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  store i32 1, i32* %4, align 4
  br label %180

179:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %169, %156, %79, %58, %21
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i64 @dmar_test_boundary(i64, i64, i64) #1

declare dso_local i64 @rounddown2(i64, i64) #1

declare dso_local i64 @roundup2(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
