; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c___lio_check_db_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c___lio_check_db_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__, %struct.lio_instr_queue** }
%struct.TYPE_2__ = type { i32* }
%struct.lio_instr_queue = type { i64, i32, i32*, i32, i32 }

@ticks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64)* @__lio_check_db_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lio_check_db_timeout(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lio_instr_queue*, align 8
  %6 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = icmp eq %struct.octeon_device* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %86

10:                                               ; preds = %2
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %11, i32 0, i32 1
  %13 = load %struct.lio_instr_queue**, %struct.lio_instr_queue*** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.lio_instr_queue*, %struct.lio_instr_queue** %13, i64 %14
  %16 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %15, align 8
  store %struct.lio_instr_queue* %16, %struct.lio_instr_queue** %5, align 8
  %17 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %18 = icmp eq %struct.lio_instr_queue* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %86

20:                                               ; preds = %10
  %21 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %22 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %21, i32 0, i32 4
  %23 = call i64 @atomic_load_acq_int(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %27 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %30 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @lio_ms_to_ticks(i32 %31)
  %33 = add i64 %28, %32
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* @ticks, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @lio_check_timeout(i64 %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  br label %86

39:                                               ; preds = %25
  %40 = load i64, i64* @ticks, align 8
  %41 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %42 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %44 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %45 = call i32 @lio_flush_iq(%struct.octeon_device* %43, %struct.lio_instr_queue* %44, i32 0)
  %46 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %47 = call i32 @lio_enable_irq(i32* null, %struct.lio_instr_queue* %46)
  br label %48

48:                                               ; preds = %39, %20
  %49 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %86

54:                                               ; preds = %48
  %55 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %56 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %61 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %60, i32 0, i32 1
  %62 = call i64 @mtx_trylock(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %66 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %70 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @drbr_empty(i32* %68, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %76 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %80 = call i32 @lio_mq_start_locked(i32* %78, %struct.lio_instr_queue* %79)
  br label %81

81:                                               ; preds = %74, %64
  %82 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %5, align 8
  %83 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %82, i32 0, i32 1
  %84 = call i32 @mtx_unlock(i32* %83)
  br label %85

85:                                               ; preds = %81, %59
  br label %86

86:                                               ; preds = %9, %19, %38, %85, %54, %48
  ret void
}

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i64 @lio_ms_to_ticks(i32) #1

declare dso_local i32 @lio_check_timeout(i64, i64) #1

declare dso_local i32 @lio_flush_iq(%struct.octeon_device*, %struct.lio_instr_queue*, i32) #1

declare dso_local i32 @lio_enable_irq(i32*, %struct.lio_instr_queue*) #1

declare dso_local i64 @mtx_trylock(i32*) #1

declare dso_local i32 @drbr_empty(i32*, i32*) #1

declare dso_local i32 @lio_mq_start_locked(i32*, %struct.lio_instr_queue*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
