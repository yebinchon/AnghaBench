; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_fail_point_entry_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_fail.c_fail_point_entry_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fail_point_entry = type { i32, i32, i32, i32 }
%struct.fail_point_setting = type { i32, i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PROB_MAX = common dso_local global i32 0, align 4
@NO_PID = common dso_local global i32 0, align 4
@FE_COUNT_UNTRACKED = common dso_local global i32 0, align 4
@fe_entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fail_point_entry* (%struct.fail_point_setting*)* @fail_point_entry_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fail_point_entry* @fail_point_entry_new(%struct.fail_point_setting* %0) #0 {
  %2 = alloca %struct.fail_point_setting*, align 8
  %3 = alloca %struct.fail_point_entry*, align 8
  store %struct.fail_point_setting* %0, %struct.fail_point_setting** %2, align 8
  %4 = load i32, i32* @M_WAITOK, align 4
  %5 = load i32, i32* @M_ZERO, align 4
  %6 = or i32 %4, %5
  %7 = call %struct.fail_point_entry* @fp_malloc(i32 16, i32 %6)
  store %struct.fail_point_entry* %7, %struct.fail_point_entry** %3, align 8
  %8 = load %struct.fail_point_setting*, %struct.fail_point_setting** %2, align 8
  %9 = getelementptr inbounds %struct.fail_point_setting, %struct.fail_point_setting* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fail_point_entry*, %struct.fail_point_entry** %3, align 8
  %12 = getelementptr inbounds %struct.fail_point_entry, %struct.fail_point_entry* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @PROB_MAX, align 4
  %14 = load %struct.fail_point_entry*, %struct.fail_point_entry** %3, align 8
  %15 = getelementptr inbounds %struct.fail_point_entry, %struct.fail_point_entry* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @NO_PID, align 4
  %17 = load %struct.fail_point_entry*, %struct.fail_point_entry** %3, align 8
  %18 = getelementptr inbounds %struct.fail_point_entry, %struct.fail_point_entry* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @FE_COUNT_UNTRACKED, align 4
  %20 = load %struct.fail_point_entry*, %struct.fail_point_entry** %3, align 8
  %21 = getelementptr inbounds %struct.fail_point_entry, %struct.fail_point_entry* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.fail_point_setting*, %struct.fail_point_setting** %2, align 8
  %23 = getelementptr inbounds %struct.fail_point_setting, %struct.fail_point_setting* %22, i32 0, i32 0
  %24 = load %struct.fail_point_entry*, %struct.fail_point_entry** %3, align 8
  %25 = load i32, i32* @fe_entries, align 4
  %26 = call i32 @TAILQ_INSERT_TAIL(i32* %23, %struct.fail_point_entry* %24, i32 %25)
  %27 = load %struct.fail_point_entry*, %struct.fail_point_entry** %3, align 8
  ret %struct.fail_point_entry* %27
}

declare dso_local %struct.fail_point_entry* @fp_malloc(i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.fail_point_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
