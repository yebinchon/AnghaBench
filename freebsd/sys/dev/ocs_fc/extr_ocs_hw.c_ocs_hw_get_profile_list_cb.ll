; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_profile_list_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_profile_list_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__, i32, i32 (i32, %struct.TYPE_17__*, i32)*, %struct.TYPE_15__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32 }

@OCS_M_ZERO = common dso_local global i32 0, align 4
@OCS_HW_MAX_PROFILES = common dso_local global i32 0, align 4
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32, %struct.TYPE_17__*, i8*)* @ocs_hw_get_profile_list_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_get_profile_list_cb(%struct.TYPE_19__* %0, i32 %1, %struct.TYPE_17__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %10, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 1
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %11, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %12, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @OCS_M_ZERO, align 4
  %27 = call %struct.TYPE_17__* @ocs_malloc(i32 %25, i32 40, i32 %26)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %9, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @OCS_HW_MAX_PROFILES, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %4
  %40 = load i32, i32* @OCS_HW_MAX_PROFILES, align 4
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %39, %4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %95, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %98

46:                                               ; preds = %42
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  store i32 %54, i32* %61, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i32 %69, i32* %76, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @ocs_strcpy(i32 %84, i8* %93)
  br label %95

95:                                               ; preds = %46
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %42

98:                                               ; preds = %42
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  %101 = load i32 (i32, %struct.TYPE_17__*, i32)*, i32 (i32, %struct.TYPE_17__*, i32)** %100, align 8
  %102 = icmp ne i32 (i32, %struct.TYPE_17__*, i32)* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = load i32 (i32, %struct.TYPE_17__*, i32)*, i32 (i32, %struct.TYPE_17__*, i32)** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 %106(i32 %107, %struct.TYPE_17__* %108, i32 %111)
  br label %119

113:                                              ; preds = %98
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %118 = call i32 @ocs_free(i32 %116, %struct.TYPE_17__* %117, i32 40)
  br label %119

119:                                              ; preds = %113, %103
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %124 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %125 = call i32 @ocs_free(i32 %122, %struct.TYPE_17__* %123, i32 %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  %131 = call i32 @ocs_dma_free(i32 %128, %struct.TYPE_20__* %130)
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = call i32 @ocs_free(i32 %134, %struct.TYPE_17__* %135, i32 40)
  ret i32 0
}

declare dso_local %struct.TYPE_17__* @ocs_malloc(i32, i32, i32) #1

declare dso_local i32 @ocs_strcpy(i32, i8*) #1

declare dso_local i32 @ocs_free(i32, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ocs_dma_free(i32, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
