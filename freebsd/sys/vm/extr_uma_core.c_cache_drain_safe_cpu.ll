; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_cache_drain_safe_cpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_cache_drain_safe_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }

@UMA_ZFLAG_INTERNAL = common dso_local global i32 0, align 4
@UMA_ZONE_NUMA = common dso_local global i32 0, align 4
@curcpu = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @cache_drain_safe_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_drain_safe_cpu(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UMA_ZFLAG_INTERNAL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %128

15:                                               ; preds = %1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = call i32 @ZONE_LOCK(%struct.TYPE_13__* %16)
  %18 = call i32 (...) @critical_enter()
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @UMA_ZONE_NUMA, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @PCPU_GET(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = load i64, i64* @curcpu, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i64 %33
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %3, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = icmp ne %struct.TYPE_15__* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %29
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = call i32 @zone_put_bucket(%struct.TYPE_13__* %47, i32* %53, %struct.TYPE_15__* %56, i32 0)
  br label %62

58:                                               ; preds = %39
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %4, align 8
  br label %62

62:                                               ; preds = %58, %46
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %64, align 8
  br label %65

65:                                               ; preds = %62, %29
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  %69 = icmp ne %struct.TYPE_15__* %68, null
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = call i32 @zone_put_bucket(%struct.TYPE_13__* %78, i32* %84, %struct.TYPE_15__* %87, i32 0)
  br label %93

89:                                               ; preds = %70
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %5, align 8
  br label %93

93:                                               ; preds = %89, %77
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %95, align 8
  br label %96

96:                                               ; preds = %93, %65
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %6, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %101, align 8
  %102 = call i32 (...) @critical_exit()
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %104 = call i32 @ZONE_UNLOCK(%struct.TYPE_13__* %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %106 = icmp ne %struct.TYPE_15__* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %110 = call i32 @bucket_free(%struct.TYPE_13__* %108, %struct.TYPE_15__* %109, i32* null)
  br label %111

111:                                              ; preds = %107, %96
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = icmp ne %struct.TYPE_15__* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = call i32 @bucket_free(%struct.TYPE_13__* %115, %struct.TYPE_15__* %116, i32* null)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = icmp ne %struct.TYPE_15__* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = call i32 @bucket_drain(%struct.TYPE_13__* %122, %struct.TYPE_15__* %123)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = call i32 @bucket_free(%struct.TYPE_13__* %125, %struct.TYPE_15__* %126, i32* null)
  br label %128

128:                                              ; preds = %14, %121, %118
  ret void
}

declare dso_local i32 @ZONE_LOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @zone_put_bucket(%struct.TYPE_13__*, i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @ZONE_UNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @bucket_free(%struct.TYPE_13__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @bucket_drain(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
