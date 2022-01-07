; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_label_index_is_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_label_index_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_label_index = type { i64, i64, i64, i64, i32, i64, i32, i32 }

@NVDIMM_INDEX_BLOCK_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_label_index*, i64, i64, i64)* @label_index_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @label_index_is_valid(%struct.nvdimm_label_index* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvdimm_label_index*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nvdimm_label_index* %0, %struct.nvdimm_label_index** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %12 = bitcast %struct.nvdimm_label_index* %11 to i32*
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = mul i64 %13, %14
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = bitcast i32* %16 to %struct.nvdimm_label_index*
  store %struct.nvdimm_label_index* %17, %struct.nvdimm_label_index** %6, align 8
  %18 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %19 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NVDIMM_INDEX_BLOCK_SIGNATURE, align 4
  %22 = call i64 @strcmp(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %85

25:                                               ; preds = %4
  %26 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %27 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %30 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @fletcher64(%struct.nvdimm_label_index* %32, i64 %33)
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %83, label %36

36:                                               ; preds = %25
  %37 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %38 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = mul i64 %40, %41
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %83, label %44

44:                                               ; preds = %36
  %45 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %46 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %83, label %50

50:                                               ; preds = %44
  %51 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %52 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = sext i32 %58 to i64
  %60 = mul i64 %54, %59
  %61 = icmp ne i64 %53, %60
  br i1 %61, label %83, label %62

62:                                               ; preds = %50
  %63 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %64 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %62
  %68 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %69 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 3
  br i1 %71, label %83, label %72

72:                                               ; preds = %67
  %73 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %74 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp sgt i64 %75, %76
  br i1 %77, label %83, label %78

78:                                               ; preds = %72
  %79 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %6, align 8
  %80 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %72, %67, %62, %50, %44, %36, %25
  store i32 0, i32* %5, align 4
  br label %85

84:                                               ; preds = %78
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %83, %24
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @fletcher64(%struct.nvdimm_label_index*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
