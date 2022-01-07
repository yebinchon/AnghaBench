; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_cache_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_cache_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i64 }

@vm_ndomains = common dso_local global i32 0, align 4
@uma_bucketlist = common dso_local global i32 0, align 4
@ub_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @bucket_cache_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bucket_cache_reclaim(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %95, %2
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* @vm_ndomains, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %98

14:                                               ; preds = %10
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i64 %19
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %5, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %36

24:                                               ; preds = %14
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i64 @lmax(i32 %27, i64 %34)
  br label %36

36:                                               ; preds = %24, %23
  %37 = phi i64 [ 0, %23 ], [ %35, %24 ]
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %52, %36
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %94

44:                                               ; preds = %38
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 3
  %47 = load i32, i32* @uma_bucketlist, align 4
  %48 = call %struct.TYPE_15__* @TAILQ_LAST(i32* %46, i32 %47)
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %6, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = icmp eq %struct.TYPE_15__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %94

52:                                               ; preds = %44
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = load i32, i32* @ub_link, align 4
  %60 = call i32 @TAILQ_REMOVE(i32* %57, %struct.TYPE_15__* %58, i32 %59)
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @lmin(i64 %68, i64 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i64 @lmin(i64 %77, i64 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = call i32 @ZONE_UNLOCK(%struct.TYPE_13__* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = call i32 @bucket_drain(%struct.TYPE_13__* %86, %struct.TYPE_15__* %87)
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = call i32 @bucket_free(%struct.TYPE_13__* %89, %struct.TYPE_15__* %90, i32* null)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = call i32 @ZONE_LOCK(%struct.TYPE_13__* %92)
  br label %38

94:                                               ; preds = %51, %38
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %10

98:                                               ; preds = %10
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %101, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, -1
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %106, %98
  ret void
}

declare dso_local i64 @lmax(i32, i64) #1

declare dso_local %struct.TYPE_15__* @TAILQ_LAST(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @lmin(i64, i64) #1

declare dso_local i32 @ZONE_UNLOCK(%struct.TYPE_13__*) #1

declare dso_local i32 @bucket_drain(%struct.TYPE_13__*, %struct.TYPE_15__*) #1

declare dso_local i32 @bucket_free(%struct.TYPE_13__*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @ZONE_LOCK(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
