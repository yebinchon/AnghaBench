; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_igmp.c_igmp_v1v2_process_group_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_igmp.c_igmp_v1v2_process_group_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_multi = type { i64, i32 }

@V_current_state_timers_running = common dso_local global i32 0, align 4
@IGMP_VERSION_2 = common dso_local global i32 0, align 4
@IGMP_v2_HOST_MEMBERSHIP_REPORT = common dso_local global i32 0, align 4
@IGMP_v1_HOST_MEMBERSHIP_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.in_multi*, i32)* @igmp_v1v2_process_group_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igmp_v1v2_process_group_timer(%struct.in_multi* %0, i32 %1) #0 {
  %3 = alloca %struct.in_multi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.in_multi* %0, %struct.in_multi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @IN_MULTI_LIST_LOCK_ASSERT()
  %7 = call i32 (...) @IGMP_LOCK_ASSERT()
  %8 = load %struct.in_multi*, %struct.in_multi** %3, align 8
  %9 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %22

13:                                               ; preds = %2
  %14 = load %struct.in_multi*, %struct.in_multi** %3, align 8
  %15 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %21

20:                                               ; preds = %13
  store i32 1, i32* @V_current_state_timers_running, align 4
  br label %46

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21, %12
  %23 = load %struct.in_multi*, %struct.in_multi** %3, align 8
  %24 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %46 [
    i32 132, label %26
    i32 129, label %26
    i32 135, label %26
    i32 134, label %26
    i32 128, label %26
    i32 137, label %26
    i32 131, label %27
    i32 136, label %45
    i32 130, label %45
    i32 133, label %45
  ]

26:                                               ; preds = %22, %22, %22, %22, %22, %22
  br label %46

27:                                               ; preds = %22
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.in_multi*, %struct.in_multi** %3, align 8
  %32 = getelementptr inbounds %struct.in_multi, %struct.in_multi* %31, i32 0, i32 1
  store i32 135, i32* %32, align 8
  %33 = load %struct.in_multi*, %struct.in_multi** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IGMP_VERSION_2, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @IGMP_v2_HOST_MEMBERSHIP_REPORT, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @IGMP_v1_HOST_MEMBERSHIP_REPORT, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @igmp_v1v2_queue_report(%struct.in_multi* %33, i32 %42)
  br label %44

44:                                               ; preds = %41, %27
  br label %46

45:                                               ; preds = %22, %22, %22
  br label %46

46:                                               ; preds = %20, %22, %45, %44, %26
  ret void
}

declare dso_local i32 @IN_MULTI_LIST_LOCK_ASSERT(...) #1

declare dso_local i32 @IGMP_LOCK_ASSERT(...) #1

declare dso_local i32 @igmp_v1v2_queue_report(%struct.in_multi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
