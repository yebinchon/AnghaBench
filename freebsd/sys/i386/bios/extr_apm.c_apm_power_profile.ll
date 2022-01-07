; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_power_profile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_power_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i32 }
%struct.apm_info = type { i32 }

@apm_power_profile.apm_acline = internal global i32 0, align 4
@POWER_PROFILE_PERFORMANCE = common dso_local global i32 0, align 4
@POWER_PROFILE_ECONOMY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apm_softc*)* @apm_power_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apm_power_profile(%struct.apm_softc* %0) #0 {
  %2 = alloca %struct.apm_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.apm_info, align 4
  store %struct.apm_softc* %0, %struct.apm_softc** %2, align 8
  %5 = call i64 @apm_get_info(%struct.apm_info* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load i32, i32* @apm_power_profile.apm_acline, align 4
  %10 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.apm_info, %struct.apm_info* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @apm_power_profile.apm_acline, align 4
  %16 = load i32, i32* @apm_power_profile.apm_acline, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @POWER_PROFILE_PERFORMANCE, align 4
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @POWER_PROFILE_ECONOMY, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @power_profile_set_state(i32 %24)
  br label %26

26:                                               ; preds = %7, %22, %8
  ret void
}

declare dso_local i64 @apm_get_info(%struct.apm_info*) #1

declare dso_local i32 @power_profile_set_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
