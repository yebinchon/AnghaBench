; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_info = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i8*, i8*, i32, i32*, i32*, i32*, i32*, i64 }

@feeder_rate_round = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@Z_ONE = common dso_local global i32 0, align 4
@Z_FULL_ONE = common dso_local global i8* null, align 8
@Z_QUALITY_MIN = common dso_local global i64 0, align 8
@Z_QUALITY_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z_info*)* @z_resampler_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z_resampler_reset(%struct.z_info* %0) #0 {
  %2 = alloca %struct.z_info*, align 8
  store %struct.z_info* %0, %struct.z_info** %2, align 8
  %3 = load %struct.z_info*, %struct.z_info** %2, align 8
  %4 = getelementptr inbounds %struct.z_info, %struct.z_info* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.z_info*, %struct.z_info** %2, align 8
  %7 = getelementptr inbounds %struct.z_info, %struct.z_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @feeder_rate_round, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.z_info*, %struct.z_info** %2, align 8
  %13 = getelementptr inbounds %struct.z_info, %struct.z_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @feeder_rate_round, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @feeder_rate_round, align 4
  br label %20

19:                                               ; preds = %11, %1
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 1, %19 ]
  %22 = srem i32 %8, %21
  %23 = sub nsw i32 %5, %22
  %24 = load %struct.z_info*, %struct.z_info** %2, align 8
  %25 = getelementptr inbounds %struct.z_info, %struct.z_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.z_info*, %struct.z_info** %2, align 8
  %27 = getelementptr inbounds %struct.z_info, %struct.z_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.z_info*, %struct.z_info** %2, align 8
  %30 = getelementptr inbounds %struct.z_info, %struct.z_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @feeder_rate_round, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %20
  %35 = load %struct.z_info*, %struct.z_info** %2, align 8
  %36 = getelementptr inbounds %struct.z_info, %struct.z_info* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @feeder_rate_round, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @feeder_rate_round, align 4
  br label %43

42:                                               ; preds = %34, %20
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 1, %42 ]
  %45 = srem i32 %31, %44
  %46 = sub nsw i32 %28, %45
  %47 = load %struct.z_info*, %struct.z_info** %2, align 8
  %48 = getelementptr inbounds %struct.z_info, %struct.z_info* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.z_info*, %struct.z_info** %2, align 8
  %50 = getelementptr inbounds %struct.z_info, %struct.z_info* %49, i32 0, i32 4
  store i32 1, i32* %50, align 8
  %51 = load %struct.z_info*, %struct.z_info** %2, align 8
  %52 = getelementptr inbounds %struct.z_info, %struct.z_info* %51, i32 0, i32 5
  store i32 1, i32* %52, align 4
  %53 = load %struct.z_info*, %struct.z_info** %2, align 8
  %54 = getelementptr inbounds %struct.z_info, %struct.z_info* %53, i32 0, i32 16
  store i64 0, i64* %54, align 8
  %55 = load %struct.z_info*, %struct.z_info** %2, align 8
  %56 = getelementptr inbounds %struct.z_info, %struct.z_info* %55, i32 0, i32 15
  store i32* null, i32** %56, align 8
  %57 = load %struct.z_info*, %struct.z_info** %2, align 8
  %58 = getelementptr inbounds %struct.z_info, %struct.z_info* %57, i32 0, i32 6
  store i32 1, i32* %58, align 8
  %59 = load %struct.z_info*, %struct.z_info** %2, align 8
  %60 = getelementptr inbounds %struct.z_info, %struct.z_info* %59, i32 0, i32 14
  store i32* null, i32** %60, align 8
  %61 = load %struct.z_info*, %struct.z_info** %2, align 8
  %62 = getelementptr inbounds %struct.z_info, %struct.z_info* %61, i32 0, i32 13
  store i32* null, i32** %62, align 8
  %63 = load %struct.z_info*, %struct.z_info** %2, align 8
  %64 = getelementptr inbounds %struct.z_info, %struct.z_info* %63, i32 0, i32 12
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %43
  %68 = load %struct.z_info*, %struct.z_info** %2, align 8
  %69 = getelementptr inbounds %struct.z_info, %struct.z_info* %68, i32 0, i32 12
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @M_DEVBUF, align 4
  %72 = call i32 @free(i32* %70, i32 %71)
  %73 = load %struct.z_info*, %struct.z_info** %2, align 8
  %74 = getelementptr inbounds %struct.z_info, %struct.z_info* %73, i32 0, i32 12
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %67, %43
  %76 = load i32, i32* @Z_ONE, align 4
  %77 = load %struct.z_info*, %struct.z_info** %2, align 8
  %78 = getelementptr inbounds %struct.z_info, %struct.z_info* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** @Z_FULL_ONE, align 8
  %80 = load %struct.z_info*, %struct.z_info** %2, align 8
  %81 = getelementptr inbounds %struct.z_info, %struct.z_info* %80, i32 0, i32 10
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @Z_FULL_ONE, align 8
  %83 = load %struct.z_info*, %struct.z_info** %2, align 8
  %84 = getelementptr inbounds %struct.z_info, %struct.z_info* %83, i32 0, i32 9
  store i8* %82, i8** %84, align 8
  %85 = load %struct.z_info*, %struct.z_info** %2, align 8
  %86 = getelementptr inbounds %struct.z_info, %struct.z_info* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @Z_QUALITY_MIN, align 8
  %89 = icmp slt i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %75
  %91 = load i64, i64* @Z_QUALITY_MIN, align 8
  %92 = load %struct.z_info*, %struct.z_info** %2, align 8
  %93 = getelementptr inbounds %struct.z_info, %struct.z_info* %92, i32 0, i32 7
  store i64 %91, i64* %93, align 8
  br label %105

94:                                               ; preds = %75
  %95 = load %struct.z_info*, %struct.z_info** %2, align 8
  %96 = getelementptr inbounds %struct.z_info, %struct.z_info* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @Z_QUALITY_MAX, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i64, i64* @Z_QUALITY_MAX, align 8
  %102 = load %struct.z_info*, %struct.z_info** %2, align 8
  %103 = getelementptr inbounds %struct.z_info, %struct.z_info* %102, i32 0, i32 7
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104, %90
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
