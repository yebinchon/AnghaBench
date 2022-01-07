; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.z_info* }
%struct.z_info = type { i8*, i8*, i8*, i8* }

@feeder_rate_min = common dso_local global i8* null, align 8
@feeder_rate_max = common dso_local global i8* null, align 8
@E2BIG = common dso_local global i32 0, align 4
@Z_QUALITY_MIN = common dso_local global i8* null, align 8
@Z_QUALITY_MAX = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SND_CHN_MIN = common dso_local global i8* null, align 8
@SND_CHN_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*, i32, i8*)* @z_resampler_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_resampler_set(%struct.pcm_feeder* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_feeder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.z_info*, align 8
  %9 = alloca i8*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %11 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %10, i32 0, i32 0
  %12 = load %struct.z_info*, %struct.z_info** %11, align 8
  store %struct.z_info* %12, %struct.z_info** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %109 [
    i32 128, label %14
    i32 130, label %35
    i32 129, label %56
    i32 131, label %88
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = load i8*, i8** @feeder_rate_min, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** @feeder_rate_max, align 8
  %21 = icmp ugt i8* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @E2BIG, align 4
  store i32 %23, i32* %4, align 4
  br label %114

24:                                               ; preds = %18
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.z_info*, %struct.z_info** %8, align 8
  %27 = getelementptr inbounds %struct.z_info, %struct.z_info* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %114

31:                                               ; preds = %24
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.z_info*, %struct.z_info** %8, align 8
  %34 = getelementptr inbounds %struct.z_info, %struct.z_info* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  br label %111

35:                                               ; preds = %3
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** @feeder_rate_min, align 8
  %38 = icmp ult i8* %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** @feeder_rate_max, align 8
  %42 = icmp ugt i8* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @E2BIG, align 4
  store i32 %44, i32* %4, align 4
  br label %114

45:                                               ; preds = %39
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.z_info*, %struct.z_info** %8, align 8
  %48 = getelementptr inbounds %struct.z_info, %struct.z_info* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %114

52:                                               ; preds = %45
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.z_info*, %struct.z_info** %8, align 8
  %55 = getelementptr inbounds %struct.z_info, %struct.z_info* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  br label %111

56:                                               ; preds = %3
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** @Z_QUALITY_MIN, align 8
  %59 = icmp ult i8* %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = load i8*, i8** @Z_QUALITY_MAX, align 8
  %63 = icmp ugt i8* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %56
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %114

66:                                               ; preds = %60
  %67 = load i8*, i8** %7, align 8
  %68 = load %struct.z_info*, %struct.z_info** %8, align 8
  %69 = getelementptr inbounds %struct.z_info, %struct.z_info* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp eq i8* %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %114

73:                                               ; preds = %66
  %74 = load %struct.z_info*, %struct.z_info** %8, align 8
  %75 = getelementptr inbounds %struct.z_info, %struct.z_info* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.z_info*, %struct.z_info** %8, align 8
  %79 = getelementptr inbounds %struct.z_info, %struct.z_info* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %81 = call i32 @z_resampler_setup(%struct.pcm_feeder* %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %114

84:                                               ; preds = %73
  %85 = load i8*, i8** %9, align 8
  %86 = load %struct.z_info*, %struct.z_info** %8, align 8
  %87 = getelementptr inbounds %struct.z_info, %struct.z_info* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  br label %111

88:                                               ; preds = %3
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** @SND_CHN_MIN, align 8
  %91 = icmp ult i8* %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8
  %94 = load i8*, i8** @SND_CHN_MAX, align 8
  %95 = icmp ugt i8* %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92, %88
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %4, align 4
  br label %114

98:                                               ; preds = %92
  %99 = load i8*, i8** %7, align 8
  %100 = load %struct.z_info*, %struct.z_info** %8, align 8
  %101 = getelementptr inbounds %struct.z_info, %struct.z_info* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = icmp eq i8* %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %114

105:                                              ; preds = %98
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.z_info*, %struct.z_info** %8, align 8
  %108 = getelementptr inbounds %struct.z_info, %struct.z_info* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  br label %111

109:                                              ; preds = %3
  %110 = load i32, i32* @EINVAL, align 4
  store i32 %110, i32* %4, align 4
  br label %114

111:                                              ; preds = %105, %84, %52, %31
  %112 = load %struct.pcm_feeder*, %struct.pcm_feeder** %5, align 8
  %113 = call i32 @z_resampler_setup(%struct.pcm_feeder* %112)
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %111, %109, %104, %96, %83, %72, %64, %51, %43, %30, %22
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @z_resampler_setup(%struct.pcm_feeder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
