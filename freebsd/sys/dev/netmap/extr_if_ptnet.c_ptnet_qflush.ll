; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_if_ptnet.c_ptnet_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptnet_softc = type { i32, %struct.ptnet_queue* }
%struct.ptnet_queue = type { i64 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ptnet_qflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ptnet_qflush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ptnet_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ptnet_queue*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ptnet_softc* @if_getsoftc(i32 %7)
  store %struct.ptnet_softc* %8, %struct.ptnet_softc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %9
  %16 = load %struct.ptnet_softc*, %struct.ptnet_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ptnet_softc, %struct.ptnet_softc* %16, i32 0, i32 1
  %18 = load %struct.ptnet_queue*, %struct.ptnet_queue** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %18, i64 %20
  store %struct.ptnet_queue* %21, %struct.ptnet_queue** %5, align 8
  %22 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %23 = call i32 @PTNET_Q_LOCK(%struct.ptnet_queue* %22)
  %24 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %25 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %15
  br label %29

29:                                               ; preds = %35, %28
  %30 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %31 = getelementptr inbounds %struct.ptnet_queue, %struct.ptnet_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.mbuf* @buf_ring_dequeue_sc(i64 %32)
  store %struct.mbuf* %33, %struct.mbuf** %6, align 8
  %34 = icmp ne %struct.mbuf* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %37 = call i32 @m_freem(%struct.mbuf* %36)
  br label %29

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %15
  %40 = load %struct.ptnet_queue*, %struct.ptnet_queue** %5, align 8
  %41 = call i32 @PTNET_Q_UNLOCK(%struct.ptnet_queue* %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @if_qflush(i32 %46)
  ret void
}

declare dso_local %struct.ptnet_softc* @if_getsoftc(i32) #1

declare dso_local i32 @PTNET_Q_LOCK(%struct.ptnet_queue*) #1

declare dso_local %struct.mbuf* @buf_ring_dequeue_sc(i64) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @PTNET_Q_UNLOCK(%struct.ptnet_queue*) #1

declare dso_local i32 @if_qflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
