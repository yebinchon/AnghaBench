; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_chn_removefeeder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_chn_removefeeder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { %struct.pcm_feeder* }
%struct.pcm_feeder = type { %struct.pcm_feeder* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chn_removefeeder(%struct.pcm_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcm_channel*, align 8
  %4 = alloca %struct.pcm_feeder*, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %3, align 8
  %5 = load %struct.pcm_channel*, %struct.pcm_channel** %3, align 8
  %6 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %5, i32 0, i32 0
  %7 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %8 = icmp eq %struct.pcm_feeder* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.pcm_channel*, %struct.pcm_channel** %3, align 8
  %12 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %11, i32 0, i32 0
  %13 = load %struct.pcm_feeder*, %struct.pcm_feeder** %12, align 8
  store %struct.pcm_feeder* %13, %struct.pcm_feeder** %4, align 8
  %14 = load %struct.pcm_channel*, %struct.pcm_channel** %3, align 8
  %15 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %14, i32 0, i32 0
  %16 = load %struct.pcm_feeder*, %struct.pcm_feeder** %15, align 8
  %17 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %16, i32 0, i32 0
  %18 = load %struct.pcm_feeder*, %struct.pcm_feeder** %17, align 8
  %19 = load %struct.pcm_channel*, %struct.pcm_channel** %3, align 8
  %20 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %19, i32 0, i32 0
  store %struct.pcm_feeder* %18, %struct.pcm_feeder** %20, align 8
  %21 = load %struct.pcm_feeder*, %struct.pcm_feeder** %4, align 8
  %22 = call i32 @feeder_destroy(%struct.pcm_feeder* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %10, %9
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @feeder_destroy(%struct.pcm_feeder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
