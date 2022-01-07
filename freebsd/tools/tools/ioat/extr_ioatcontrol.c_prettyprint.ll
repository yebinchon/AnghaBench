; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ioat/extr_ioatcontrol.c_prettyprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ioat/extr_ioatcontrol.c_prettyprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_test = type { i32*, i32, i32, i64 }

@IOAT_TEST_NO_DMA_ENGINE = common dso_local global i64 0, align 8
@IOAT_TEST_NO_MEMORY = common dso_local global i64 0, align 8
@IOAT_TEST_MISCOMPARE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Errors:\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\09No DMA engine present: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\09Out of memory: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09Miscompares: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Processed %u txns\0A\00", align 1
@IOAT_TEST_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"B/s\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"%ju (%s) copied in %u ms (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"%ju (%s) copied\0A\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioat_test*)* @prettyprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prettyprint(%struct.ioat_test* %0) #0 {
  %2 = alloca %struct.ioat_test*, align 8
  %3 = alloca [10 x i8], align 1
  %4 = alloca [10 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.ioat_test* %0, %struct.ioat_test** %2, align 8
  %6 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %7 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @IOAT_TEST_NO_DMA_ENGINE, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %1
  %14 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %15 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @IOAT_TEST_NO_MEMORY, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %13
  %22 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %23 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @IOAT_TEST_MISCOMPARE, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %79

29:                                               ; preds = %21, %13, %1
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %32 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* @IOAT_TEST_NO_DMA_ENGINE, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %40 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @IOAT_TEST_NO_DMA_ENGINE, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38, %29
  %47 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %48 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @IOAT_TEST_NO_MEMORY, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %56 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @IOAT_TEST_NO_MEMORY, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %64 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @IOAT_TEST_MISCOMPARE, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %72 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @IOAT_TEST_MISCOMPARE, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %70, %62
  br label %79

79:                                               ; preds = %78, %21
  %80 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %81 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @IOAT_TEST_OK, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %87 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = udiv i32 %85, %88
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %92 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %96 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @IOAT_TEST_OK, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %94, %100
  store i32 %101, i32* %5, align 4
  %102 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @HN_AUTOSCALE, align 4
  %105 = load i32, i32* @HN_DECIMAL, align 4
  %106 = call i32 @humanize_number(i8* %102, i32 10, i32 %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %108 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %79
  %112 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %113 = load i32, i32* %5, align 4
  %114 = mul nsw i32 1000, %113
  %115 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %116 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %114, %117
  %119 = load i32, i32* @HN_AUTOSCALE, align 4
  %120 = load i32, i32* @HN_DECIMAL, align 4
  %121 = call i32 @humanize_number(i8* %112, i32 10, i32 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %119, i32 %120)
  %122 = load i32, i32* %5, align 4
  %123 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %124 = load %struct.ioat_test*, %struct.ioat_test** %2, align 8
  %125 = getelementptr inbounds %struct.ioat_test, %struct.ioat_test* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds [10 x i8], [10 x i8]* %3, i64 0, i64 0
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %122, i8* %123, i32 %126, i8* %127)
  br label %133

129:                                              ; preds = %79
  %130 = load i32, i32* %5, align 4
  %131 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %130, i8* %131)
  br label %133

133:                                              ; preds = %129, %111
  %134 = load i32, i32* @EX_OK, align 4
  ret i32 %134
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
