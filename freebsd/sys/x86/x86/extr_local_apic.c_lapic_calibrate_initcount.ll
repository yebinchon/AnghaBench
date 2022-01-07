; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_calibrate_initcount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_calibrate_initcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapic = type { i32 }

@lapic_timer_divisor = common dso_local global i32 0, align 4
@APIC_TIMER_MAX_COUNT = common dso_local global i64 0, align 8
@LAPIC_CCR_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"lapic: Divisor too big\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"lapic: Divisor %lu, Frequency %lu Hz\0A\00", align 1
@count_freq = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lapic*)* @lapic_calibrate_initcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lapic_calibrate_initcount(%struct.lapic* %0) #0 {
  %2 = alloca %struct.lapic*, align 8
  %3 = alloca i64, align 8
  store %struct.lapic* %0, %struct.lapic** %2, align 8
  store i32 2, i32* @lapic_timer_divisor, align 4
  br label %4

4:                                                ; preds = %22, %1
  %5 = load i32, i32* @lapic_timer_divisor, align 4
  %6 = call i32 @lapic_timer_set_divisor(i32 %5)
  %7 = load %struct.lapic*, %struct.lapic** %2, align 8
  %8 = load i64, i64* @APIC_TIMER_MAX_COUNT, align 8
  %9 = call i32 @lapic_timer_oneshot_nointr(%struct.lapic* %7, i64 %8)
  %10 = call i32 @DELAY(i32 1000000)
  %11 = load i64, i64* @APIC_TIMER_MAX_COUNT, align 8
  %12 = load i32, i32* @LAPIC_CCR_TIMER, align 4
  %13 = call i64 @lapic_read32(i32 %12)
  %14 = sub nsw i64 %11, %13
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @APIC_TIMER_MAX_COUNT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %25

19:                                               ; preds = %4
  %20 = load i32, i32* @lapic_timer_divisor, align 4
  %21 = shl i32 %20, 1
  store i32 %21, i32* @lapic_timer_divisor, align 4
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @lapic_timer_divisor, align 4
  %24 = icmp sle i32 %23, 128
  br i1 %24, label %4, label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* @lapic_timer_divisor, align 4
  %27 = icmp sgt i32 %26, 128
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i64, i64* @bootverbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @lapic_timer_divisor, align 4
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i64, i64* %3, align 8
  store i64 %38, i64* @count_freq, align 8
  ret void
}

declare dso_local i32 @lapic_timer_set_divisor(i32) #1

declare dso_local i32 @lapic_timer_oneshot_nointr(%struct.lapic*, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @lapic_read32(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @printf(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
