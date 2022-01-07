; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_for_missing_keep_alive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_check_for_missing_keep_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i64, i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_HW_HINTS_NO_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Keep alive watchdog timeout.\0A\00", align 1
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@ENA_REGS_RESET_KEEP_ALIVE_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @check_for_missing_keep_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_missing_keep_alive(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %5 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ENA_HW_HINTS_NO_TIMEOUT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %58

17:                                               ; preds = %10
  %18 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %18, i32 0, i32 5
  %20 = call i64 @atomic_load_acq_64(i32* %19)
  store i64 %20, i64* %3, align 8
  %21 = call i64 (...) @getsbinuptime()
  %22 = load i64, i64* %3, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %17
  %33 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @counter_u64_add(i32 %40, i32 1)
  %42 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %43 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %44 = call i32 @ENA_FLAG_ISSET(i32 %42, %struct.ena_adapter* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @likely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %32
  %51 = load i32, i32* @ENA_REGS_RESET_KEEP_ALIVE_TO, align 4
  %52 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %55 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %56 = call i32 @ENA_FLAG_SET_ATOMIC(i32 %54, %struct.ena_adapter* %55)
  br label %57

57:                                               ; preds = %50, %32
  br label %58

58:                                               ; preds = %9, %16, %57, %17
  ret void
}

declare dso_local i64 @atomic_load_acq_64(i32*) #1

declare dso_local i64 @getsbinuptime(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ENA_FLAG_SET_ATOMIC(i32, %struct.ena_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
