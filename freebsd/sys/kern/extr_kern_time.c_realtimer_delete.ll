; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_realtimer_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_realtimer_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimer = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.itimer*)* @realtimer_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realtimer_delete(%struct.itimer* %0) #0 {
  %2 = alloca %struct.itimer*, align 8
  store %struct.itimer* %0, %struct.itimer** %2, align 8
  %3 = load %struct.itimer*, %struct.itimer** %2, align 8
  %4 = getelementptr inbounds %struct.itimer, %struct.itimer* %3, i32 0, i32 2
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* %4, i32 %5)
  %7 = load %struct.itimer*, %struct.itimer** %2, align 8
  %8 = getelementptr inbounds %struct.itimer, %struct.itimer* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = call i32 @timespecclear(i32* %9)
  %11 = load %struct.itimer*, %struct.itimer** %2, align 8
  %12 = getelementptr inbounds %struct.itimer, %struct.itimer* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @timespecclear(i32* %13)
  %15 = load %struct.itimer*, %struct.itimer** %2, align 8
  %16 = call i32 @ITIMER_UNLOCK(%struct.itimer* %15)
  %17 = load %struct.itimer*, %struct.itimer** %2, align 8
  %18 = getelementptr inbounds %struct.itimer, %struct.itimer* %17, i32 0, i32 0
  %19 = call i32 @callout_drain(i32* %18)
  %20 = load %struct.itimer*, %struct.itimer** %2, align 8
  %21 = call i32 @ITIMER_LOCK(%struct.itimer* %20)
  ret i32 0
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @timespecclear(i32*) #1

declare dso_local i32 @ITIMER_UNLOCK(%struct.itimer*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ITIMER_LOCK(%struct.itimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
