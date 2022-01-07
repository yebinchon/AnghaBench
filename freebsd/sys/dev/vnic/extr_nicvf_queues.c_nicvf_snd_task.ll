; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_snd_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_snd_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_queue = type { i32, i32, %struct.nicvf* }
%struct.nicvf = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @nicvf_snd_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_snd_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_queue*, align 8
  %6 = alloca %struct.nicvf*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.snd_queue*
  store %struct.snd_queue* %10, %struct.snd_queue** %5, align 8
  %11 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %12 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %11, i32 0, i32 2
  %13 = load %struct.nicvf*, %struct.nicvf** %12, align 8
  store %struct.nicvf* %13, %struct.nicvf** %6, align 8
  %14 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %15 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %14, i32 0, i32 1
  %16 = load %struct.ifnet*, %struct.ifnet** %15, align 8
  store %struct.ifnet* %16, %struct.ifnet** %7, align 8
  %17 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %18 = call i32 @if_getdrvflags(%struct.ifnet* %17)
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.nicvf*, %struct.nicvf** %6, align 8
  %27 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %2
  br label %47

31:                                               ; preds = %25
  %32 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %33 = call i32 @NICVF_TX_LOCK(%struct.snd_queue* %32)
  %34 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %35 = call i32 @nicvf_xmit_locked(%struct.snd_queue* %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %37 = call i32 @NICVF_TX_UNLOCK(%struct.snd_queue* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %42 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %45 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %44, i32 0, i32 0
  %46 = call i32 @taskqueue_enqueue(i32 %43, i32* %45)
  br label %47

47:                                               ; preds = %30, %40, %31
  ret void
}

declare dso_local i32 @if_getdrvflags(%struct.ifnet*) #1

declare dso_local i32 @NICVF_TX_LOCK(%struct.snd_queue*) #1

declare dso_local i32 @nicvf_xmit_locked(%struct.snd_queue*) #1

declare dso_local i32 @NICVF_TX_UNLOCK(%struct.snd_queue*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
