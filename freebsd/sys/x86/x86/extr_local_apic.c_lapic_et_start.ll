; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_et_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_et_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapic = type { i32 }
%struct.eventtimer = type { i32 }

@lapics = common dso_local global %struct.lapic* null, align 8
@apic_id = common dso_local global i32 0, align 4
@LAT_MODE_PERIODIC = common dso_local global i32 0, align 4
@lapic_timer_tsc_deadline = common dso_local global i64 0, align 8
@LAT_MODE_DEADLINE = common dso_local global i32 0, align 4
@LAT_MODE_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @lapic_et_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lapic_et_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lapic*, align 8
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lapic*, %struct.lapic** @lapics, align 8
  %9 = load i32, i32* @apic_id, align 4
  %10 = call i64 @PCPU_GET(i32 %9)
  %11 = getelementptr inbounds %struct.lapic, %struct.lapic* %8, i64 %10
  store %struct.lapic* %11, %struct.lapic** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %16 = load %struct.lapic*, %struct.lapic** %7, align 8
  %17 = load i32, i32* @LAT_MODE_PERIODIC, align 4
  %18 = call i32 @lapic_change_mode(%struct.eventtimer* %15, %struct.lapic* %16, i32 %17)
  %19 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %20 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 %21, %22
  %24 = ashr i32 %23, 32
  %25 = load %struct.lapic*, %struct.lapic** %7, align 8
  %26 = getelementptr inbounds %struct.lapic, %struct.lapic* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.lapic*, %struct.lapic** %7, align 8
  %28 = call i32 @lapic_timer_periodic(%struct.lapic* %27)
  br label %63

29:                                               ; preds = %3
  %30 = load i64, i64* @lapic_timer_tsc_deadline, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %34 = load %struct.lapic*, %struct.lapic** %7, align 8
  %35 = load i32, i32* @LAT_MODE_DEADLINE, align 4
  %36 = call i32 @lapic_change_mode(%struct.eventtimer* %33, %struct.lapic* %34, i32 %35)
  %37 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %38 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %39, %40
  %42 = ashr i32 %41, 32
  %43 = load %struct.lapic*, %struct.lapic** %7, align 8
  %44 = getelementptr inbounds %struct.lapic, %struct.lapic* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.lapic*, %struct.lapic** %7, align 8
  %46 = call i32 @lapic_timer_deadline(%struct.lapic* %45)
  br label %62

47:                                               ; preds = %29
  %48 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %49 = load %struct.lapic*, %struct.lapic** %7, align 8
  %50 = load i32, i32* @LAT_MODE_ONESHOT, align 4
  %51 = call i32 @lapic_change_mode(%struct.eventtimer* %48, %struct.lapic* %49, i32 %50)
  %52 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %53 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = mul nsw i32 %54, %55
  %57 = ashr i32 %56, 32
  %58 = load %struct.lapic*, %struct.lapic** %7, align 8
  %59 = getelementptr inbounds %struct.lapic, %struct.lapic* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.lapic*, %struct.lapic** %7, align 8
  %61 = call i32 @lapic_timer_oneshot(%struct.lapic* %60)
  br label %62

62:                                               ; preds = %47, %32
  br label %63

63:                                               ; preds = %62, %14
  ret i32 0
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @lapic_change_mode(%struct.eventtimer*, %struct.lapic*, i32) #1

declare dso_local i32 @lapic_timer_periodic(%struct.lapic*) #1

declare dso_local i32 @lapic_timer_deadline(%struct.lapic*) #1

declare dso_local i32 @lapic_timer_oneshot(%struct.lapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
