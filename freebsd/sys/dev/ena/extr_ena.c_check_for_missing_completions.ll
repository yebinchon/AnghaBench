; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_for_missing_completions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_for_missing_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i64, i32, i32, i32, %struct.ena_ring*, %struct.ena_ring* }
%struct.ena_ring = type { i32 }

@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@ENA_HW_HINTS_NO_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @check_for_missing_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_missing_completions(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %8 = call i32 (...) @rmb()
  %9 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %11 = call i64 @ENA_FLAG_ISSET(i32 %9, %struct.ena_adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %92

14:                                               ; preds = %1
  %15 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %17 = call i64 @ENA_FLAG_ISSET(i32 %15, %struct.ena_adapter* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %92

20:                                               ; preds = %14
  %21 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ENA_HW_HINTS_NO_TIMEOUT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %92

27:                                               ; preds = %20
  %28 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %81, %27
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %84

40:                                               ; preds = %34
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %41, i32 0, i32 5
  %43 = load %struct.ena_ring*, %struct.ena_ring** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %43, i64 %45
  store %struct.ena_ring* %46, %struct.ena_ring** %3, align 8
  %47 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %47, i32 0, i32 4
  %49 = load %struct.ena_ring*, %struct.ena_ring** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %49, i64 %51
  store %struct.ena_ring* %52, %struct.ena_ring** %4, align 8
  %53 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %54 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %55 = call i32 @check_missing_comp_in_tx_queue(%struct.ena_adapter* %53, %struct.ena_ring* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %40
  br label %92

62:                                               ; preds = %40
  %63 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %64 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %65 = call i32 @check_for_rx_interrupt_queue(%struct.ena_adapter* %63, %struct.ena_ring* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %92

72:                                               ; preds = %62
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %84

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %34

84:                                               ; preds = %77, %34
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = srem i32 %85, %88
  %90 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %71, %61, %26, %19, %13
  ret void
}

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @check_missing_comp_in_tx_queue(%struct.ena_adapter*, %struct.ena_ring*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_for_rx_interrupt_queue(%struct.ena_adapter*, %struct.ena_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
