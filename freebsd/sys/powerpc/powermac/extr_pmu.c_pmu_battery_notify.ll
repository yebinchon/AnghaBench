; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_battery_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_pmu.c_pmu_battery_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_battstate = type { i32 }

@PMU_PWR_AC_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"notify=0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PMU\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"POWER\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"ACLINE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu_battstate*, %struct.pmu_battstate*)* @pmu_battery_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmu_battery_notify(%struct.pmu_battstate* %0, %struct.pmu_battstate* %1) #0 {
  %3 = alloca %struct.pmu_battstate*, align 8
  %4 = alloca %struct.pmu_battstate*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pmu_battstate* %0, %struct.pmu_battstate** %3, align 8
  store %struct.pmu_battstate* %1, %struct.pmu_battstate** %4, align 8
  %8 = load %struct.pmu_battstate*, %struct.pmu_battstate** %3, align 8
  %9 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %6, align 4
  %16 = load %struct.pmu_battstate*, %struct.pmu_battstate** %4, align 8
  %17 = getelementptr inbounds %struct.pmu_battstate, %struct.pmu_battstate* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PMU_PWR_AC_PRESENT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @snprintf(i8* %28, i32 16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %32 = call i32 @devctl_notify(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @devctl_notify(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
