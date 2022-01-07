; ModuleID = '/home/carl/AnghaBench/freebsd/sys/tests/callout_test/extr_callout_test.c_run_callout_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/tests/callout_test/extr_callout_test.c_run_callout_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout_run = type { i32, i32, i32, i32*, i32, i64, i64, i64, i64, i64, i32 }
%struct.kern_test = type { i32, i64 }
%struct.callout_test = type { i32, i32 }

@comaster = common dso_local global %struct.callout_run** null, align 8
@M_CALLTMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"callouttest\00", align 1
@MTX_DUPOK = common dso_local global i32 0, align 4
@CALLOUT_MPSAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kern_test*)* @run_callout_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_callout_test(%struct.kern_test* %0) #0 {
  %2 = alloca %struct.kern_test*, align 8
  %3 = alloca %struct.callout_test*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.callout_run*, align 8
  %7 = alloca i32, align 4
  store %struct.kern_test* %0, %struct.kern_test** %2, align 8
  %8 = load %struct.kern_test*, %struct.kern_test** %2, align 8
  %9 = getelementptr inbounds %struct.kern_test, %struct.kern_test* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.kern_test*, %struct.kern_test** %2, align 8
  %12 = getelementptr inbounds %struct.kern_test, %struct.kern_test* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.callout_test*
  store %struct.callout_test* %14, %struct.callout_test** %3, align 8
  %15 = load %struct.callout_run**, %struct.callout_run*** @comaster, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.callout_run*, %struct.callout_run** %15, i64 %17
  %19 = load %struct.callout_run*, %struct.callout_run** %18, align 8
  %20 = icmp eq %struct.callout_run* %19, null
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load i32, i32* @M_CALLTMP, align 4
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call i8* @malloc(i64 80, i32 %22, i32 %23)
  %25 = bitcast i8* %24 to %struct.callout_run*
  %26 = load %struct.callout_run**, %struct.callout_run*** @comaster, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.callout_run*, %struct.callout_run** %26, i64 %28
  store %struct.callout_run* %25, %struct.callout_run** %29, align 8
  store %struct.callout_run* %25, %struct.callout_run** %6, align 8
  %30 = load %struct.callout_run**, %struct.callout_run*** @comaster, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.callout_run*, %struct.callout_run** %30, i64 %32
  %34 = load %struct.callout_run*, %struct.callout_run** %33, align 8
  %35 = call i32 @memset(%struct.callout_run* %34, i32 0, i32 80)
  %36 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %37 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %36, i32 0, i32 10
  %38 = load i32, i32* @MTX_DUPOK, align 4
  %39 = call i32 @mtx_init(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %42 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %76

43:                                               ; preds = %1
  %44 = load %struct.callout_run**, %struct.callout_run*** @comaster, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.callout_run*, %struct.callout_run** %44, i64 %46
  %48 = load %struct.callout_run*, %struct.callout_run** %47, align 8
  store %struct.callout_run* %48, %struct.callout_run** %6, align 8
  %49 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %50 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %49, i32 0, i32 2
  store i32 0, i32* %50, align 8
  %51 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %52 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  %53 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %54 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %53, i32 0, i32 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %56 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %55, i32 0, i32 9
  store i64 0, i64* %56, align 8
  %57 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %58 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %60 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %59, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %62 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %61, i32 0, i32 7
  store i64 0, i64* %62, align 8
  %63 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %64 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %43
  %68 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %69 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @M_CALLTMP, align 4
  %72 = call i32 @free(i32* %70, i32 %71)
  %73 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %74 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %67, %43
  br label %76

76:                                               ; preds = %75, %21
  %77 = load %struct.callout_test*, %struct.callout_test** %3, align 8
  %78 = getelementptr inbounds %struct.callout_test, %struct.callout_test* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %81 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.callout_test*, %struct.callout_test** %3, align 8
  %83 = getelementptr inbounds %struct.callout_test, %struct.callout_test* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %86 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %88 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  store i64 %91, i64* %4, align 8
  %92 = load i64, i64* %4, align 8
  %93 = load i32, i32* @M_CALLTMP, align 4
  %94 = load i32, i32* @M_WAITOK, align 4
  %95 = call i8* @malloc(i64 %92, i32 %93, i32 %94)
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %98 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %97, i32 0, i32 3
  store i32* %96, i32** %98, align 8
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %114, %76
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %102 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %99
  %106 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %107 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* @CALLOUT_MPSAFE, align 4
  %113 = call i32 @callout_init(i32* %111, i32 %112)
  br label %114

114:                                              ; preds = %105
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %99

117:                                              ; preds = %99
  %118 = load %struct.callout_run*, %struct.callout_run** %6, align 8
  %119 = call i32 @execute_the_co_test(%struct.callout_run* %118)
  ret void
}

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @memset(%struct.callout_run*, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @execute_the_co_test(%struct.callout_run*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
