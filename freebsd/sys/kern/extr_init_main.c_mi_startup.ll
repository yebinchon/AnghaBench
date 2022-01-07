; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_init_main.c_mi_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_init_main.c_mi_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinit = type { i32, i64, i64, i32 (i64)* }

@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@sysinit = common dso_local global %struct.sysinit** null, align 8
@sysinit_set = common dso_local global i32 0, align 4
@sysinit_end = common dso_local global %struct.sysinit** null, align 8
@SI_SUB_DUMMY = common dso_local global i32 0, align 4
@SI_SUB_DONE = common dso_local global i32 0, align 4
@newsysinit = common dso_local global %struct.sysinit** null, align 8
@M_TEMP = common dso_local global i32 0, align 4
@newsysinit_end = common dso_local global %struct.sysinit** null, align 8
@Giant = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@MA_NOTRECURSED = common dso_local global i32 0, align 4
@DB_STGY_ANY = common dso_local global i32 0, align 4
@DB_STGY_PROC = common dso_local global i32 0, align 4
@SI_SUB_COPYRIGHT = common dso_local global i32 0, align 4
@verbose_sysinit = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mi_startup() #0 {
  %1 = alloca %struct.sysinit**, align 8
  %2 = alloca %struct.sysinit**, align 8
  %3 = alloca %struct.sysinit*, align 8
  %4 = call i32 (...) @TSENTER()
  %5 = load i32, i32* @boothowto, align 4
  %6 = load i32, i32* @RB_VERBOSE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @bootverbose, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @bootverbose, align 4
  br label %12

12:                                               ; preds = %9, %0
  %13 = load %struct.sysinit**, %struct.sysinit*** @sysinit, align 8
  %14 = icmp eq %struct.sysinit** %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* @sysinit_set, align 4
  %17 = call %struct.sysinit** @SET_BEGIN(i32 %16)
  store %struct.sysinit** %17, %struct.sysinit*** @sysinit, align 8
  %18 = load i32, i32* @sysinit_set, align 4
  %19 = call %struct.sysinit** @SET_LIMIT(i32 %18)
  store %struct.sysinit** %19, %struct.sysinit*** @sysinit_end, align 8
  br label %20

20:                                               ; preds = %15, %12
  br label %21

21:                                               ; preds = %127, %20
  %22 = load %struct.sysinit**, %struct.sysinit*** @sysinit, align 8
  store %struct.sysinit** %22, %struct.sysinit*** %1, align 8
  br label %23

23:                                               ; preds = %77, %21
  %24 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %25 = load %struct.sysinit**, %struct.sysinit*** @sysinit_end, align 8
  %26 = icmp ult %struct.sysinit** %24, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %23
  %28 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %29 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %28, i64 1
  store %struct.sysinit** %29, %struct.sysinit*** %2, align 8
  br label %30

30:                                               ; preds = %73, %27
  %31 = load %struct.sysinit**, %struct.sysinit*** %2, align 8
  %32 = load %struct.sysinit**, %struct.sysinit*** @sysinit_end, align 8
  %33 = icmp ult %struct.sysinit** %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %30
  %35 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %36 = load %struct.sysinit*, %struct.sysinit** %35, align 8
  %37 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sysinit**, %struct.sysinit*** %2, align 8
  %40 = load %struct.sysinit*, %struct.sysinit** %39, align 8
  %41 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %38, %42
  br i1 %43, label %64, label %44

44:                                               ; preds = %34
  %45 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %46 = load %struct.sysinit*, %struct.sysinit** %45, align 8
  %47 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sysinit**, %struct.sysinit*** %2, align 8
  %50 = load %struct.sysinit*, %struct.sysinit** %49, align 8
  %51 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %48, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %56 = load %struct.sysinit*, %struct.sysinit** %55, align 8
  %57 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sysinit**, %struct.sysinit*** %2, align 8
  %60 = load %struct.sysinit*, %struct.sysinit** %59, align 8
  %61 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sle i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54, %34
  br label %73

65:                                               ; preds = %54, %44
  %66 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %67 = load %struct.sysinit*, %struct.sysinit** %66, align 8
  store %struct.sysinit* %67, %struct.sysinit** %3, align 8
  %68 = load %struct.sysinit**, %struct.sysinit*** %2, align 8
  %69 = load %struct.sysinit*, %struct.sysinit** %68, align 8
  %70 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  store %struct.sysinit* %69, %struct.sysinit** %70, align 8
  %71 = load %struct.sysinit*, %struct.sysinit** %3, align 8
  %72 = load %struct.sysinit**, %struct.sysinit*** %2, align 8
  store %struct.sysinit* %71, %struct.sysinit** %72, align 8
  br label %73

73:                                               ; preds = %65, %64
  %74 = load %struct.sysinit**, %struct.sysinit*** %2, align 8
  %75 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %74, i32 1
  store %struct.sysinit** %75, %struct.sysinit*** %2, align 8
  br label %30

76:                                               ; preds = %30
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %79 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %78, i32 1
  store %struct.sysinit** %79, %struct.sysinit*** %1, align 8
  br label %23

80:                                               ; preds = %23
  %81 = load %struct.sysinit**, %struct.sysinit*** @sysinit, align 8
  store %struct.sysinit** %81, %struct.sysinit*** %1, align 8
  br label %82

82:                                               ; preds = %131, %80
  %83 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %84 = load %struct.sysinit**, %struct.sysinit*** @sysinit_end, align 8
  %85 = icmp ult %struct.sysinit** %83, %84
  br i1 %85, label %86, label %134

86:                                               ; preds = %82
  %87 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %88 = load %struct.sysinit*, %struct.sysinit** %87, align 8
  %89 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SI_SUB_DUMMY, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %131

94:                                               ; preds = %86
  %95 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %96 = load %struct.sysinit*, %struct.sysinit** %95, align 8
  %97 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SI_SUB_DONE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %131

102:                                              ; preds = %94
  %103 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %104 = load %struct.sysinit*, %struct.sysinit** %103, align 8
  %105 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %104, i32 0, i32 3
  %106 = load i32 (i64)*, i32 (i64)** %105, align 8
  %107 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %108 = load %struct.sysinit*, %struct.sysinit** %107, align 8
  %109 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = call i32 %106(i64 %110)
  %112 = load i32, i32* @SI_SUB_DONE, align 4
  %113 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %114 = load %struct.sysinit*, %struct.sysinit** %113, align 8
  %115 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.sysinit**, %struct.sysinit*** @newsysinit, align 8
  %117 = icmp ne %struct.sysinit** %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %102
  %119 = load %struct.sysinit**, %struct.sysinit*** @sysinit, align 8
  %120 = load i32, i32* @sysinit_set, align 4
  %121 = call %struct.sysinit** @SET_BEGIN(i32 %120)
  %122 = icmp ne %struct.sysinit** %119, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.sysinit**, %struct.sysinit*** @sysinit, align 8
  %125 = load i32, i32* @M_TEMP, align 4
  %126 = call i32 @free(%struct.sysinit** %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.sysinit**, %struct.sysinit*** @newsysinit, align 8
  store %struct.sysinit** %128, %struct.sysinit*** @sysinit, align 8
  %129 = load %struct.sysinit**, %struct.sysinit*** @newsysinit_end, align 8
  store %struct.sysinit** %129, %struct.sysinit*** @sysinit_end, align 8
  store %struct.sysinit** null, %struct.sysinit*** @newsysinit, align 8
  store %struct.sysinit** null, %struct.sysinit*** @newsysinit_end, align 8
  br label %21

130:                                              ; preds = %102
  br label %131

131:                                              ; preds = %130, %101, %93
  %132 = load %struct.sysinit**, %struct.sysinit*** %1, align 8
  %133 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %132, i32 1
  store %struct.sysinit** %133, %struct.sysinit*** %1, align 8
  br label %82

134:                                              ; preds = %82
  %135 = call i32 (...) @TSEXIT()
  %136 = load i32, i32* @MA_OWNED, align 4
  %137 = load i32, i32* @MA_NOTRECURSED, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @mtx_assert(i32* @Giant, i32 %138)
  %140 = call i32 @mtx_unlock(i32* @Giant)
  %141 = call i32 (...) @swapper()
  ret void
}

declare dso_local i32 @TSENTER(...) #1

declare dso_local %struct.sysinit** @SET_BEGIN(i32) #1

declare dso_local %struct.sysinit** @SET_LIMIT(i32) #1

declare dso_local i32 @free(%struct.sysinit**, i32) #1

declare dso_local i32 @TSEXIT(...) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @swapper(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
