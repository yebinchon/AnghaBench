; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_if_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_if_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.nicvf = type { %struct.queue_set* }
%struct.queue_set = type { i64, %struct.snd_queue* }
%struct.snd_queue = type { i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @nicvf_if_qflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_if_qflush(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.queue_set*, align 8
  %5 = alloca %struct.snd_queue*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = call %struct.nicvf* @if_getsoftc(%struct.ifnet* %8)
  store %struct.nicvf* %9, %struct.nicvf** %3, align 8
  %10 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 0
  %12 = load %struct.queue_set*, %struct.queue_set** %11, align 8
  store %struct.queue_set* %12, %struct.queue_set** %4, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %39, %1
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %16 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %13
  %20 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %21 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %20, i32 0, i32 1
  %22 = load %struct.snd_queue*, %struct.snd_queue** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %22, i64 %23
  store %struct.snd_queue* %24, %struct.snd_queue** %5, align 8
  %25 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %26 = call i32 @NICVF_TX_LOCK(%struct.snd_queue* %25)
  br label %27

27:                                               ; preds = %33, %19
  %28 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %29 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.mbuf* @buf_ring_dequeue_sc(i32 %30)
  store %struct.mbuf* %31, %struct.mbuf** %6, align 8
  %32 = icmp ne %struct.mbuf* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %35 = call i32 @m_freem(%struct.mbuf* %34)
  br label %27

36:                                               ; preds = %27
  %37 = load %struct.snd_queue*, %struct.snd_queue** %5, align 8
  %38 = call i32 @NICVF_TX_UNLOCK(%struct.snd_queue* %37)
  br label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %13

42:                                               ; preds = %13
  %43 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %44 = call i32 @if_qflush(%struct.ifnet* %43)
  ret void
}

declare dso_local %struct.nicvf* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @NICVF_TX_LOCK(%struct.snd_queue*) #1

declare dso_local %struct.mbuf* @buf_ring_dequeue_sc(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @NICVF_TX_UNLOCK(%struct.snd_queue*) #1

declare dso_local i32 @if_qflush(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
