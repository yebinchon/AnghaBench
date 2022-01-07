; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_chn_addfeeder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_chn_addfeeder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { %struct.pcm_feeder* }
%struct.pcm_feeder = type { %struct.pcm_feeder*, %struct.pcm_feeder* }
%struct.feeder_class = type { i32 }
%struct.pcm_feederdesc = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chn_addfeeder(%struct.pcm_channel* %0, %struct.feeder_class* %1, %struct.pcm_feederdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_channel*, align 8
  %6 = alloca %struct.feeder_class*, align 8
  %7 = alloca %struct.pcm_feederdesc*, align 8
  %8 = alloca %struct.pcm_feeder*, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %5, align 8
  store %struct.feeder_class* %1, %struct.feeder_class** %6, align 8
  store %struct.pcm_feederdesc* %2, %struct.pcm_feederdesc** %7, align 8
  %9 = load %struct.feeder_class*, %struct.feeder_class** %6, align 8
  %10 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %7, align 8
  %11 = call %struct.pcm_feeder* @feeder_create(%struct.feeder_class* %9, %struct.pcm_feederdesc* %10)
  store %struct.pcm_feeder* %11, %struct.pcm_feeder** %8, align 8
  %12 = load %struct.pcm_feeder*, %struct.pcm_feeder** %8, align 8
  %13 = icmp eq %struct.pcm_feeder* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOSPC, align 4
  store i32 %15, i32* %4, align 4
  br label %36

16:                                               ; preds = %3
  %17 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %18 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %17, i32 0, i32 0
  %19 = load %struct.pcm_feeder*, %struct.pcm_feeder** %18, align 8
  %20 = load %struct.pcm_feeder*, %struct.pcm_feeder** %8, align 8
  %21 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %20, i32 0, i32 1
  store %struct.pcm_feeder* %19, %struct.pcm_feeder** %21, align 8
  %22 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %23 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %22, i32 0, i32 0
  %24 = load %struct.pcm_feeder*, %struct.pcm_feeder** %23, align 8
  %25 = icmp ne %struct.pcm_feeder* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.pcm_feeder*, %struct.pcm_feeder** %8, align 8
  %28 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %29 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %28, i32 0, i32 0
  %30 = load %struct.pcm_feeder*, %struct.pcm_feeder** %29, align 8
  %31 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %30, i32 0, i32 0
  store %struct.pcm_feeder* %27, %struct.pcm_feeder** %31, align 8
  br label %32

32:                                               ; preds = %26, %16
  %33 = load %struct.pcm_feeder*, %struct.pcm_feeder** %8, align 8
  %34 = load %struct.pcm_channel*, %struct.pcm_channel** %5, align 8
  %35 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %34, i32 0, i32 0
  store %struct.pcm_feeder* %33, %struct.pcm_feeder** %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.pcm_feeder* @feeder_create(%struct.feeder_class*, %struct.pcm_feederdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
