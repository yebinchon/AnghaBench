; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_for_empty_rx_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_for_empty_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, %struct.ena_ring* }
%struct.ena_ring = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@EMPTY_RX_REFILL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"trigger refill for ring %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @check_for_empty_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_empty_rx_ring(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %6 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %8 = call i64 @ENA_FLAG_ISSET(i32 %6, %struct.ena_adapter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %85

11:                                               ; preds = %1
  %12 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %13 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %14 = call i64 @ENA_FLAG_ISSET(i32 %12, %struct.ena_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %85

17:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %82, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %18
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %25, i32 0, i32 2
  %27 = load %struct.ena_ring*, %struct.ena_ring** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %27, i64 %29
  store %struct.ena_ring* %30, %struct.ena_ring** %3, align 8
  %31 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %32 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ena_com_free_desc(i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %37 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = icmp eq i32 %35, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %24
  %45 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %50 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EMPTY_RX_REFILL, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %44
  %55 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %56 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @counter_u64_add(i32 %58, i32 1)
  %60 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %66 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %71 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @taskqueue_enqueue(i32 %69, i32* %73)
  %75 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %76 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %54, %44
  br label %81

78:                                               ; preds = %24
  %79 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %80 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %77
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %18

85:                                               ; preds = %10, %16, %18
  ret void
}

declare dso_local i64 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ena_com_free_desc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
