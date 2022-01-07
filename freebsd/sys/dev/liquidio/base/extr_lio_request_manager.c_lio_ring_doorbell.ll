; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_ring_doorbell.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_ring_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.lio_instr_queue = type { i32, i64, i32 }

@LIO_DEV_RUNNING = common dso_local global i64 0, align 8
@ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %struct.lio_instr_queue*)* @lio_ring_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_ring_doorbell(%struct.octeon_device* %0, %struct.lio_instr_queue* %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.lio_instr_queue*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.lio_instr_queue* %1, %struct.lio_instr_queue** %4, align 8
  %5 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %5, i32 0, i32 0
  %7 = call i64 @atomic_load_acq_int(i32* %6)
  %8 = load i64, i64* @LIO_DEV_RUNNING, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %13 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %16 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @lio_write_csr32(%struct.octeon_device* %11, i32 %14, i64 %17)
  %19 = call i32 (...) @__compiler_membar()
  %20 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %21 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @ticks, align 4
  %23 = load %struct.lio_instr_queue*, %struct.lio_instr_queue** %4, align 8
  %24 = getelementptr inbounds %struct.lio_instr_queue, %struct.lio_instr_queue* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @__compiler_membar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
