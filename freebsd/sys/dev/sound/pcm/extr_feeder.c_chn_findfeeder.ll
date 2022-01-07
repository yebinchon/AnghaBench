; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_chn_findfeeder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_chn_findfeeder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.pcm_feeder*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.pcm_channel = type { %struct.pcm_feeder* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcm_feeder* @chn_findfeeder(%struct.pcm_channel* %0, i64 %1) #0 {
  %3 = alloca %struct.pcm_feeder*, align 8
  %4 = alloca %struct.pcm_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pcm_feeder*, align 8
  store %struct.pcm_channel* %0, %struct.pcm_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %8 = getelementptr inbounds %struct.pcm_channel, %struct.pcm_channel* %7, i32 0, i32 0
  %9 = load %struct.pcm_feeder*, %struct.pcm_feeder** %8, align 8
  store %struct.pcm_feeder* %9, %struct.pcm_feeder** %6, align 8
  br label %10

10:                                               ; preds = %23, %2
  %11 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %12 = icmp ne %struct.pcm_feeder* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %15 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  store %struct.pcm_feeder* %22, %struct.pcm_feeder** %3, align 8
  br label %28

23:                                               ; preds = %13
  %24 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %25 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %24, i32 0, i32 0
  %26 = load %struct.pcm_feeder*, %struct.pcm_feeder** %25, align 8
  store %struct.pcm_feeder* %26, %struct.pcm_feeder** %6, align 8
  br label %10

27:                                               ; preds = %10
  store %struct.pcm_feeder* null, %struct.pcm_feeder** %3, align 8
  br label %28

28:                                               ; preds = %27, %21
  %29 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  ret %struct.pcm_feeder* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
