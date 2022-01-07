; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.z_info*, %struct.TYPE_2__* }
%struct.z_info = type { %struct.z_info*, %struct.z_info*, i32, i32, i8*, i8* }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@Z_RATE_DEFAULT = common dso_local global i8* null, align 8
@feeder_rate_quality = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*)* @z_resampler_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_resampler_init(%struct.pcm_feeder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm_feeder*, align 8
  %4 = alloca %struct.z_info*, align 8
  %5 = alloca i32, align 4
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %3, align 8
  %6 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %7 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %12 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %10, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %2, align 4
  br label %84

19:                                               ; preds = %1
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = load i32, i32* @M_NOWAIT, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call %struct.z_info* @malloc(i32 40, i32 %20, i32 %23)
  store %struct.z_info* %24, %struct.z_info** %4, align 8
  %25 = load %struct.z_info*, %struct.z_info** %4, align 8
  %26 = icmp eq %struct.z_info* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* %2, align 4
  br label %84

29:                                               ; preds = %19
  %30 = load i8*, i8** @Z_RATE_DEFAULT, align 8
  %31 = load %struct.z_info*, %struct.z_info** %4, align 8
  %32 = getelementptr inbounds %struct.z_info, %struct.z_info* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** @Z_RATE_DEFAULT, align 8
  %34 = load %struct.z_info*, %struct.z_info** %4, align 8
  %35 = getelementptr inbounds %struct.z_info, %struct.z_info* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @feeder_rate_quality, align 4
  %37 = load %struct.z_info*, %struct.z_info** %4, align 8
  %38 = getelementptr inbounds %struct.z_info, %struct.z_info* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %40 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @AFMT_CHANNEL(i64 %43)
  %45 = load %struct.z_info*, %struct.z_info** %4, align 8
  %46 = getelementptr inbounds %struct.z_info, %struct.z_info* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.z_info*, %struct.z_info** %4, align 8
  %48 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %49 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %48, i32 0, i32 0
  store %struct.z_info* %47, %struct.z_info** %49, align 8
  %50 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %51 = call i32 @z_resampler_setup(%struct.pcm_feeder* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %29
  %55 = load %struct.z_info*, %struct.z_info** %4, align 8
  %56 = getelementptr inbounds %struct.z_info, %struct.z_info* %55, i32 0, i32 1
  %57 = load %struct.z_info*, %struct.z_info** %56, align 8
  %58 = icmp ne %struct.z_info* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.z_info*, %struct.z_info** %4, align 8
  %61 = getelementptr inbounds %struct.z_info, %struct.z_info* %60, i32 0, i32 1
  %62 = load %struct.z_info*, %struct.z_info** %61, align 8
  %63 = load i32, i32* @M_DEVBUF, align 4
  %64 = call i32 @free(%struct.z_info* %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.z_info*, %struct.z_info** %4, align 8
  %67 = getelementptr inbounds %struct.z_info, %struct.z_info* %66, i32 0, i32 0
  %68 = load %struct.z_info*, %struct.z_info** %67, align 8
  %69 = icmp ne %struct.z_info* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.z_info*, %struct.z_info** %4, align 8
  %72 = getelementptr inbounds %struct.z_info, %struct.z_info* %71, i32 0, i32 0
  %73 = load %struct.z_info*, %struct.z_info** %72, align 8
  %74 = load i32, i32* @M_DEVBUF, align 4
  %75 = call i32 @free(%struct.z_info* %73, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.z_info*, %struct.z_info** %4, align 8
  %78 = load i32, i32* @M_DEVBUF, align 4
  %79 = call i32 @free(%struct.z_info* %77, i32 %78)
  %80 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  %81 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %80, i32 0, i32 0
  store %struct.z_info* null, %struct.z_info** %81, align 8
  br label %82

82:                                               ; preds = %76, %29
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %27, %17
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.z_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @AFMT_CHANNEL(i64) #1

declare dso_local i32 @z_resampler_setup(%struct.pcm_feeder*) #1

declare dso_local i32 @free(%struct.z_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
