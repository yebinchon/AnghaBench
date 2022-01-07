; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_poll.c_poll_idle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_poll.c_poll_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.rtprio = type { i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@RTP_PRIO_MAX = common dso_local global i32 0, align 4
@RTP_PRIO_IDLE = common dso_local global i32 0, align 4
@poll_in_idle_loop = common dso_local global i64 0, align 8
@poll_handlers = common dso_local global i64 0, align 8
@idlepoll_sleeping = common dso_local global i32 0, align 4
@poll_each_burst = common dso_local global i32 0, align 4
@SW_VOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pollid\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @poll_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_idle() #0 {
  %1 = alloca %struct.thread*, align 8
  %2 = alloca %struct.rtprio, align 4
  %3 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %3, %struct.thread** %1, align 8
  %4 = load i32, i32* @RTP_PRIO_MAX, align 4
  %5 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %2, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @RTP_PRIO_IDLE, align 4
  %7 = getelementptr inbounds %struct.rtprio, %struct.rtprio* %2, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load %struct.thread*, %struct.thread** %1, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @PROC_SLOCK(i32 %10)
  %12 = load %struct.thread*, %struct.thread** %1, align 8
  %13 = call i32 @rtp_to_pri(%struct.rtprio* %2, %struct.thread* %12)
  %14 = load %struct.thread*, %struct.thread** %1, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @PROC_SUNLOCK(i32 %16)
  br label %18

18:                                               ; preds = %37, %0
  %19 = load i64, i64* @poll_in_idle_loop, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i64, i64* @poll_handlers, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  store i32 0, i32* @idlepoll_sleeping, align 4
  %25 = load i32, i32* @poll_each_burst, align 4
  %26 = call i32 @ether_poll(i32 %25)
  %27 = load %struct.thread*, %struct.thread** %1, align 8
  %28 = call i32 @thread_lock(%struct.thread* %27)
  %29 = load i32, i32* @SW_VOL, align 4
  %30 = call i32 @mi_switch(i32 %29, i32* null)
  %31 = load %struct.thread*, %struct.thread** %1, align 8
  %32 = call i32 @thread_unlock(%struct.thread* %31)
  br label %37

33:                                               ; preds = %21, %18
  store i32 1, i32* @idlepoll_sleeping, align 4
  %34 = load i32, i32* @hz, align 4
  %35 = mul nsw i32 %34, 3
  %36 = call i32 @tsleep(i32* @idlepoll_sleeping, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %24
  br label %18
}

declare dso_local i32 @PROC_SLOCK(i32) #1

declare dso_local i32 @rtp_to_pri(%struct.rtprio*, %struct.thread*) #1

declare dso_local i32 @PROC_SUNLOCK(i32) #1

declare dso_local i32 @ether_poll(i32) #1

declare dso_local i32 @thread_lock(%struct.thread*) #1

declare dso_local i32 @mi_switch(i32, i32*) #1

declare dso_local i32 @thread_unlock(%struct.thread*) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
