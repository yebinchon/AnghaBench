; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.h_validate_rx_req_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.h_validate_rx_req_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid rx req_id: %hu\0A\00", align 1
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@ENA_REGS_RESET_INV_RX_REQ_ID = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_ring*, i64)* @validate_rx_req_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_rx_req_id(%struct.ena_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca i64, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %8 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @likely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

15:                                               ; preds = %2
  %16 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %17 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %24 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @counter_u64_add(i32 %26, i32 1)
  %28 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %29 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %30 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i32 @ENA_FLAG_ISSET(i32 %28, %struct.TYPE_5__* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %15
  %39 = load i32, i32* @ENA_REGS_RESET_INV_RX_REQ_ID, align 4
  %40 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %41 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %45 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %44, %struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %38, %15
  %50 = load i32, i32* @EFAULT, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %14
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
