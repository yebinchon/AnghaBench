; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_probe_classes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data.c_bhnd_nvram_data_probe_classes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_data = type { i32 }
%struct.bhnd_nvram_io = type { i32 }

@bhnd_nvram_data_class_set = common dso_local global i32 0, align 4
@BHND_NVRAM_DATA_PROBE_MAYBE = common dso_local global i32 0, align 4
@BHND_NVRAM_DATA_PROBE_SPECIFIC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_nvram_data_probe_classes(%struct.bhnd_nvram_data** %0, %struct.bhnd_nvram_io* %1, i32** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bhnd_nvram_data**, align 8
  %7 = alloca %struct.bhnd_nvram_io*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.bhnd_nvram_data** %0, %struct.bhnd_nvram_data*** %6, align 8
  store %struct.bhnd_nvram_io* %1, %struct.bhnd_nvram_io** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.bhnd_nvram_data**, %struct.bhnd_nvram_data*** %6, align 8
  store %struct.bhnd_nvram_data* null, %struct.bhnd_nvram_data** %16, align 8
  %17 = load i32**, i32*** %8, align 8
  %18 = icmp eq i32** %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* @bhnd_nvram_data_class_set, align 4
  %21 = call i32** @SET_BEGIN(i32 %20)
  store i32** %21, i32*** %8, align 8
  %22 = load i32, i32* @bhnd_nvram_data_class_set, align 4
  %23 = call i64 @SET_COUNT(i32 %22)
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %19, %4
  store i64 0, i64* %14, align 8
  br label %25

25:                                               ; preds = %78, %24
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %25
  %30 = load i32**, i32*** %8, align 8
  %31 = load i64, i64* %14, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %36 = call i32 @bhnd_nvram_data_probe(i32* %34, %struct.bhnd_nvram_io* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %78

40:                                               ; preds = %29
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %78

48:                                               ; preds = %43, %40
  %49 = load %struct.bhnd_nvram_data**, %struct.bhnd_nvram_data*** %6, align 8
  %50 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %49, align 8
  %51 = icmp ne %struct.bhnd_nvram_data* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.bhnd_nvram_data**, %struct.bhnd_nvram_data*** %6, align 8
  %54 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %53, align 8
  %55 = call i32 @bhnd_nvram_data_release(%struct.bhnd_nvram_data* %54)
  %56 = load %struct.bhnd_nvram_data**, %struct.bhnd_nvram_data*** %6, align 8
  store %struct.bhnd_nvram_data* null, %struct.bhnd_nvram_data** %56, align 8
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @BHND_NVRAM_DATA_PROBE_MAYBE, align 4
  %60 = icmp sle i32 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32*, i32** %15, align 8
  %63 = load %struct.bhnd_nvram_data**, %struct.bhnd_nvram_data*** %6, align 8
  %64 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %65 = call i32 @bhnd_nvram_data_new(i32* %62, %struct.bhnd_nvram_data** %63, %struct.bhnd_nvram_io* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %78

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %12, align 4
  %72 = load i32*, i32** %15, align 8
  store i32* %72, i32** %10, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @BHND_NVRAM_DATA_PROBE_SPECIFIC, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %81

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %68, %47, %39
  %79 = load i64, i64* %14, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %14, align 8
  br label %25

81:                                               ; preds = %76, %25
  %82 = load i32*, i32** %10, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %5, align 4
  br label %100

86:                                               ; preds = %81
  %87 = load %struct.bhnd_nvram_data**, %struct.bhnd_nvram_data*** %6, align 8
  %88 = load %struct.bhnd_nvram_data*, %struct.bhnd_nvram_data** %87, align 8
  %89 = icmp eq %struct.bhnd_nvram_data* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32*, i32** %10, align 8
  %92 = load %struct.bhnd_nvram_data**, %struct.bhnd_nvram_data*** %6, align 8
  %93 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %7, align 8
  %94 = call i32 @bhnd_nvram_data_new(i32* %91, %struct.bhnd_nvram_data** %92, %struct.bhnd_nvram_io* %93)
  store i32 %94, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %100

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %86
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %96, %84
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32** @SET_BEGIN(i32) #1

declare dso_local i64 @SET_COUNT(i32) #1

declare dso_local i32 @bhnd_nvram_data_probe(i32*, %struct.bhnd_nvram_io*) #1

declare dso_local i32 @bhnd_nvram_data_release(%struct.bhnd_nvram_data*) #1

declare dso_local i32 @bhnd_nvram_data_new(i32*, %struct.bhnd_nvram_data**, %struct.bhnd_nvram_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
