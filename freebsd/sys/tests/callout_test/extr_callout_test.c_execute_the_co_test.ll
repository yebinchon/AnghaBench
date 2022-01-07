; ModuleID = '/home/carl/AnghaBench/freebsd/sys/tests/callout_test/extr_callout_test.c_execute_the_co_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/tests/callout_test/extr_callout_test.c_execute_the_co_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout_run = type { i64, i32, i32, i32, i64, i32, i32, i32* }

@mp_ncpus = common dso_local global i32 0, align 4
@test_callout = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@drainit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @execute_the_co_test(%struct.callout_run* %0) #0 {
  %2 = alloca %struct.callout_run*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.callout_run* %0, %struct.callout_run** %2, align 8
  %9 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %10 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %9, i32 0, i32 5
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %13 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %53, %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %17 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %14
  %21 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %22 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @mp_ncpus, align 4
  %28 = srem i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %30 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* @test_callout, align 4
  %36 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @callout_reset_sbt_on(i32* %34, i32 3, i32 0, i32 %35, %struct.callout_run* %36, i32 %37, i32 0)
  br label %52

39:                                               ; preds = %20
  %40 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %41 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %40, i32 0, i32 7
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* @test_callout, align 4
  %47 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %48 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %49 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @callout_reset_sbt_on(i32* %45, i32 3, i32 0, i32 %46, %struct.callout_run* %47, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %39, %25
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load i32, i32* @ticks, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %76, %56
  %59 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %60 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %63 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %61, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %58
  %68 = call i32 (...) @cpu_spinwait()
  %69 = load i32, i32* @ticks, align 4
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp sgt i32 %73, 100
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %77

76:                                               ; preds = %67
  br label %58

77:                                               ; preds = %75, %58
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %106, %77
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %81 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %78
  %85 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %86 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %85, i32 0, i32 7
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* @drainit, align 4
  %92 = call i32 @callout_async_drain(i32* %90, i32 %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %84
  %96 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %97 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  br label %105

100:                                              ; preds = %84
  %101 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %102 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %3, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %3, align 4
  br label %78

109:                                              ; preds = %78
  %110 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %111 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %114 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sub nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %118 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %117, i32 0, i32 5
  %119 = call i32 @mtx_unlock(i32* %118)
  %120 = load i32, i32* @ticks, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %135, %109
  %122 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %123 = getelementptr inbounds %struct.callout_run, %struct.callout_run* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = call i32 (...) @cpu_spinwait()
  %128 = load i32, i32* @ticks, align 4
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp sgt i32 %132, 100
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %136

135:                                              ; preds = %126
  br label %121

136:                                              ; preds = %134, %121
  %137 = load %struct.callout_run*, %struct.callout_run** %2, align 8
  %138 = bitcast %struct.callout_run* %137 to i8*
  %139 = call i32 @co_saydone(i8* %138)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_reset_sbt_on(i32*, i32, i32, i32, %struct.callout_run*, i32, i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @callout_async_drain(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @co_saydone(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
