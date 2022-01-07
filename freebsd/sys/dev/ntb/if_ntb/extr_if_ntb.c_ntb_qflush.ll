; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_net_ctx = type { i32, %struct.ntb_net_queue* }
%struct.ntb_net_queue = type { i32, i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ntb_qflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ntb_qflush(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_net_ctx*, align 8
  %4 = alloca %struct.ntb_net_queue*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.ntb_net_ctx* @if_getsoftc(i32 %7)
  store %struct.ntb_net_ctx* %8, %struct.ntb_net_ctx** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %16, i32 0, i32 1
  %18 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %18, i64 %20
  store %struct.ntb_net_queue* %21, %struct.ntb_net_queue** %4, align 8
  %22 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %4, align 8
  %23 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  br label %25

25:                                               ; preds = %31, %15
  %26 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %4, align 8
  %27 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.mbuf* @buf_ring_dequeue_sc(i32 %28)
  store %struct.mbuf* %29, %struct.mbuf** %5, align 8
  %30 = icmp ne %struct.mbuf* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = call i32 @m_freem(%struct.mbuf* %32)
  br label %25

34:                                               ; preds = %25
  %35 = load %struct.ntb_net_queue*, %struct.ntb_net_queue** %4, align 8
  %36 = getelementptr inbounds %struct.ntb_net_queue, %struct.ntb_net_queue* %35, i32 0, i32 0
  %37 = call i32 @mtx_unlock(i32* %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %9

41:                                               ; preds = %9
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @if_qflush(i32 %42)
  ret void
}

declare dso_local %struct.ntb_net_ctx* @if_getsoftc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mbuf* @buf_ring_dequeue_sc(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @if_qflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
