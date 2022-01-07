; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_rxtx.c_lio_mq_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_rxtx.c_lio_mq_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lio = type { %struct.octeon_device* }
%struct.octeon_device = type { i32, %struct.lio_instr_queue** }
%struct.lio_instr_queue = type { i32, i32 }

@M_HASHTYPE_NONE = common dso_local global i64 0, align 8
@curcpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_mq_start(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca %struct.lio_instr_queue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %11 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %12 = call %struct.lio* @if_getsoftc(%struct.ifnet* %11)
  store %struct.lio* %12, %struct.lio** %6, align 8
  %13 = load %struct.lio*, %struct.lio** %6, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 0
  %15 = load %struct.octeon_device*, %struct.octeon_device** %14, align 8
  store %struct.octeon_device* %15, %struct.octeon_device** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %17 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %16)
  %18 = load i64, i64* @M_HASHTYPE_NONE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = srem i32 %24, %27
  store i32 %28, i32* %10, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @curcpu, align 4
  %31 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = srem i32 %30, %33
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %29, %20
  %36 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 1
  %38 = load %struct.lio_instr_queue**, %struct.lio_instr_queue*** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.lio_instr_queue*, %struct.lio_instr_queue** %38, i64 %40
  %42 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %41, align 8
  store %struct.lio_instr_queue* %42, %struct.lio_instr_queue** %8, align 8
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %8, align 8
  %45 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %48 = call i32 @drbr_enqueue(%struct.ifnet* %43, i32 %46, %struct.mbuf* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %67

53:                                               ; preds = %35
  %54 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %8, align 8
  %55 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %54, i32 0, i32 0
  %56 = call i64 @mtx_trylock(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %60 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %8, align 8
  %61 = call i32 @lio_mq_start_locked(%struct.ifnet* %59, %struct.lio_instr_queue* %60)
  %62 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %8, align 8
  %63 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %62, i32 0, i32 0
  %64 = call i32 @mtx_unlock(i32* %63)
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %51
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @drbr_enqueue(%struct.ifnet*, i32, %struct.mbuf*) #1

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @lio_mq_start_locked(%struct.ifnet*, %struct.lio_instr_queue*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
