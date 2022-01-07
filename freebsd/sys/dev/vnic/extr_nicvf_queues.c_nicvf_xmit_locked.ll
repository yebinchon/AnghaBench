; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_xmit_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_xmit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_queue = type { i32, %struct.nicvf* }
%struct.nicvf = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_xmit_locked(%struct.snd_queue* %0) #0 {
  %2 = alloca %struct.snd_queue*, align 8
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_queue* %0, %struct.snd_queue** %2, align 8
  %7 = load %struct.snd_queue*, %struct.snd_queue** %2, align 8
  %8 = call i32 @NICVF_TX_LOCK_ASSERT(%struct.snd_queue* %7)
  %9 = load %struct.snd_queue*, %struct.snd_queue** %2, align 8
  %10 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %9, i32 0, i32 1
  %11 = load %struct.nicvf*, %struct.nicvf** %10, align 8
  store %struct.nicvf* %11, %struct.nicvf** %3, align 8
  %12 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %13 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %12, i32 0, i32 0
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %47, %1
  %16 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %17 = load %struct.snd_queue*, %struct.snd_queue** %2, align 8
  %18 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.mbuf* @drbr_peek(%struct.ifnet* %16, i32 %19)
  store %struct.mbuf* %20, %struct.mbuf** %5, align 8
  %21 = icmp ne %struct.mbuf* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %15
  %23 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = call i32 @ETHER_BPF_MTAP(%struct.ifnet* %23, %struct.mbuf* %24)
  %26 = load %struct.snd_queue*, %struct.snd_queue** %2, align 8
  %27 = call i32 @nicvf_tx_mbuf_locked(%struct.snd_queue* %26, %struct.mbuf** %5)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = icmp eq %struct.mbuf* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %35 = load %struct.snd_queue*, %struct.snd_queue** %2, align 8
  %36 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @drbr_advance(%struct.ifnet* %34, i32 %37)
  br label %46

39:                                               ; preds = %30
  %40 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %41 = load %struct.snd_queue*, %struct.snd_queue** %2, align 8
  %42 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = call i32 @drbr_putback(%struct.ifnet* %40, i32 %43, %struct.mbuf* %44)
  br label %46

46:                                               ; preds = %39, %33
  br label %53

47:                                               ; preds = %22
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = load %struct.snd_queue*, %struct.snd_queue** %2, align 8
  %50 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @drbr_advance(%struct.ifnet* %48, i32 %51)
  br label %15

53:                                               ; preds = %46, %15
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @NICVF_TX_LOCK_ASSERT(%struct.snd_queue*) #1

declare dso_local %struct.mbuf* @drbr_peek(%struct.ifnet*, i32) #1

declare dso_local i32 @ETHER_BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @nicvf_tx_mbuf_locked(%struct.snd_queue*, %struct.mbuf**) #1

declare dso_local i32 @drbr_advance(%struct.ifnet*, i32) #1

declare dso_local i32 @drbr_putback(%struct.ifnet*, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
