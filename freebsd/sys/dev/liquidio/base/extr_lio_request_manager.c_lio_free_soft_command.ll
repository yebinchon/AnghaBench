; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_free_soft_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_free_soft_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.lio_soft_command = type { i32 }

@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_free_soft_command(%struct.octeon_device* %0, %struct.lio_soft_command* %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.lio_soft_command*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.lio_soft_command* %1, %struct.lio_soft_command** %4, align 8
  %5 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %6 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @mtx_lock(i32* %7)
  %9 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load %struct.lio_soft_command*, %struct.lio_soft_command** %4, align 8
  %13 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %12, i32 0, i32 0
  %14 = load i32, i32* @entries, align 4
  %15 = call i32 @STAILQ_INSERT_TAIL(i32* %11, i32* %13, i32 %14)
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @atomic_subtract_int(i32* %18, i32 1)
  %20 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
