; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_timestamp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/extr_clone.c_snd_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32 }

@snd_timestamp_precision = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_timestamp(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca %struct.timeval, align 4
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %4 = load i32, i32* @snd_timestamp_precision, align 4
  switch i32 %4, label %21 [
    i32 129, label %5
    i32 131, label %11
    i32 128, label %14
    i32 130, label %18
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @time_second, align 4
  %7 = load %struct.timespec*, %struct.timespec** %2, align 8
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.timespec*, %struct.timespec** %2, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.timespec*, %struct.timespec** %2, align 8
  %13 = call i32 @getnanouptime(%struct.timespec* %12)
  br label %24

14:                                               ; preds = %1
  %15 = call i32 @microuptime(%struct.timeval* %3)
  %16 = load %struct.timespec*, %struct.timespec** %2, align 8
  %17 = call i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval* %3, %struct.timespec* %16)
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.timespec*, %struct.timespec** %2, align 8
  %20 = call i32 @nanouptime(%struct.timespec* %19)
  br label %24

21:                                               ; preds = %1
  store i32 131, i32* @snd_timestamp_precision, align 4
  %22 = load %struct.timespec*, %struct.timespec** %2, align 8
  %23 = call i32 @getnanouptime(%struct.timespec* %22)
  br label %24

24:                                               ; preds = %21, %18, %14, %11, %5
  ret void
}

declare dso_local i32 @getnanouptime(%struct.timespec*) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @TIMEVAL_TO_TIMESPEC(%struct.timeval*, %struct.timespec*) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
