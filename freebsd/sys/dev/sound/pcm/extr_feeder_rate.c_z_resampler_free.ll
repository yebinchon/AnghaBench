; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_rate.c_z_resampler_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.z_info* }
%struct.z_info = type { %struct.z_info*, %struct.z_info* }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_feeder*)* @z_resampler_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z_resampler_free(%struct.pcm_feeder* %0) #0 {
  %2 = alloca %struct.pcm_feeder*, align 8
  %3 = alloca %struct.z_info*, align 8
  store %struct.pcm_feeder* %0, %struct.pcm_feeder** %2, align 8
  %4 = load %struct.pcm_feeder*, %struct.pcm_feeder** %2, align 8
  %5 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %4, i32 0, i32 0
  %6 = load %struct.z_info*, %struct.z_info** %5, align 8
  store %struct.z_info* %6, %struct.z_info** %3, align 8
  %7 = load %struct.z_info*, %struct.z_info** %3, align 8
  %8 = icmp ne %struct.z_info* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load %struct.z_info*, %struct.z_info** %3, align 8
  %11 = getelementptr inbounds %struct.z_info, %struct.z_info* %10, i32 0, i32 1
  %12 = load %struct.z_info*, %struct.z_info** %11, align 8
  %13 = icmp ne %struct.z_info* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.z_info*, %struct.z_info** %3, align 8
  %16 = getelementptr inbounds %struct.z_info, %struct.z_info* %15, i32 0, i32 1
  %17 = load %struct.z_info*, %struct.z_info** %16, align 8
  %18 = load i32, i32* @M_DEVBUF, align 4
  %19 = call i32 @free(%struct.z_info* %17, i32 %18)
  br label %20

20:                                               ; preds = %14, %9
  %21 = load %struct.z_info*, %struct.z_info** %3, align 8
  %22 = getelementptr inbounds %struct.z_info, %struct.z_info* %21, i32 0, i32 0
  %23 = load %struct.z_info*, %struct.z_info** %22, align 8
  %24 = icmp ne %struct.z_info* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.z_info*, %struct.z_info** %3, align 8
  %27 = getelementptr inbounds %struct.z_info, %struct.z_info* %26, i32 0, i32 0
  %28 = load %struct.z_info*, %struct.z_info** %27, align 8
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = call i32 @free(%struct.z_info* %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.z_info*, %struct.z_info** %3, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(%struct.z_info* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.pcm_feeder*, %struct.pcm_feeder** %2, align 8
  %37 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %36, i32 0, i32 0
  store %struct.z_info* null, %struct.z_info** %37, align 8
  ret i32 0
}

declare dso_local i32 @free(%struct.z_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
