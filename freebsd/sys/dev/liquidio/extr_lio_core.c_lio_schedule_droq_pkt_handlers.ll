; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_schedule_droq_pkt_handlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_core.c_lio_schedule_droq_pkt_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.lio_droq**, %struct.TYPE_2__ }
%struct.lio_droq = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LIO_DEV_INTR_PKT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*)* @lio_schedule_droq_pkt_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_schedule_droq_pkt_handlers(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.lio_droq*, align 8
  %4 = alloca i64, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %5 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @LIO_DEV_INTR_PKT_DATA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %40, %11
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %15 = call i64 @LIO_MAX_OUTPUT_QUEUES(%struct.octeon_device* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @BIT_ULL(i64 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %40

27:                                               ; preds = %17
  %28 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %29 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %28, i32 0, i32 1
  %30 = load %struct.lio_droq**, %struct.lio_droq*** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.lio_droq*, %struct.lio_droq** %30, i64 %31
  %33 = load %struct.lio_droq*, %struct.lio_droq** %32, align 8
  store %struct.lio_droq* %33, %struct.lio_droq** %3, align 8
  %34 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %35 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.lio_droq*, %struct.lio_droq** %3, align 8
  %38 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %37, i32 0, i32 0
  %39 = call i32 @taskqueue_enqueue(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %27, %26
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %12

43:                                               ; preds = %12
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local i64 @LIO_MAX_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
