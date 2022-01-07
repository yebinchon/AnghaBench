; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_rxtx.c_lio_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_rxtx.c_lio_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { %struct.octeon_device* }
%struct.octeon_device = type { %struct.lio_instr_queue**, %struct.TYPE_2__ }
%struct.lio_instr_queue = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_qflush(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.lio*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.lio_instr_queue*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = call %struct.lio* @if_getsoftc(%struct.ifnet* %8)
  store %struct.lio* %9, %struct.lio** %3, align 8
  %10 = load %struct.lio*, %struct.lio** %3, align 8
  %11 = getelementptr inbounds %struct.lio, %struct.lio* %10, i32 0, i32 0
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %4, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %52, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %16 = call i32 @LIO_MAX_INSTR_QUEUES(%struct.octeon_device* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %13
  %19 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @BIT_ULL(i32 %23)
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %52

28:                                               ; preds = %18
  %29 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 0
  %31 = load %struct.lio_instr_queue**, %struct.lio_instr_queue*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.lio_instr_queue*, %struct.lio_instr_queue** %31, i64 %33
  %35 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %34, align 8
  store %struct.lio_instr_queue* %35, %struct.lio_instr_queue** %5, align 8
  %36 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %37 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %36, i32 0, i32 0
  %38 = call i32 @mtx_lock(i32* %37)
  br label %39

39:                                               ; preds = %45, %28
  %40 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %41 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.mbuf* @buf_ring_dequeue_sc(i32 %42)
  store %struct.mbuf* %43, %struct.mbuf** %6, align 8
  %44 = icmp ne %struct.mbuf* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = call i32 @m_freem(%struct.mbuf* %46)
  br label %39

48:                                               ; preds = %39
  %49 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %50 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %49, i32 0, i32 0
  %51 = call i32 @mtx_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %27
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %13

55:                                               ; preds = %13
  %56 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %57 = call i32 @if_qflush(%struct.ifnet* %56)
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @LIO_MAX_INSTR_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mbuf* @buf_ring_dequeue_sc(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @if_qflush(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
