; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_tmr_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/uhsoctl/extr_uhsoctl.c_tmr_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timers = type { i64, i32 }
%struct.timer_entry = type { i64, i32, i32, i32 (i32, i32)* }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timers*)* @tmr_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmr_run(%struct.timers* %0) #0 {
  %2 = alloca %struct.timers*, align 8
  %3 = alloca %struct.timer_entry*, align 8
  %4 = alloca %struct.timer_entry*, align 8
  store %struct.timers* %0, %struct.timers** %2, align 8
  %5 = load %struct.timers*, %struct.timers** %2, align 8
  %6 = getelementptr inbounds %struct.timers, %struct.timers* %5, i32 0, i32 1
  %7 = call %struct.timer_entry* @TAILQ_FIRST(i32* %6)
  store %struct.timer_entry* %7, %struct.timer_entry** %3, align 8
  %8 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %9 = icmp eq %struct.timer_entry* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.timers*, %struct.timers** %2, align 8
  %13 = getelementptr inbounds %struct.timers, %struct.timers* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %16 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %49, %11
  %20 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %21 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %19
  %25 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %26 = load i32, i32* @next, align 4
  %27 = call %struct.timer_entry* @TAILQ_NEXT(%struct.timer_entry* %25, i32 %26)
  store %struct.timer_entry* %27, %struct.timer_entry** %4, align 8
  %28 = load %struct.timers*, %struct.timers** %2, align 8
  %29 = getelementptr inbounds %struct.timers, %struct.timers* %28, i32 0, i32 1
  %30 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %31 = load i32, i32* @next, align 4
  %32 = call i32 @TAILQ_REMOVE(i32* %29, %struct.timer_entry* %30, i32 %31)
  %33 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %34 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %33, i32 0, i32 3
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %37 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %40 = getelementptr inbounds %struct.timer_entry, %struct.timer_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %35(i32 %38, i32 %41)
  %43 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %44 = call i32 @free(%struct.timer_entry* %43)
  %45 = load %struct.timer_entry*, %struct.timer_entry** %4, align 8
  store %struct.timer_entry* %45, %struct.timer_entry** %3, align 8
  %46 = load %struct.timer_entry*, %struct.timer_entry** %3, align 8
  %47 = icmp eq %struct.timer_entry* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %24
  br label %50

49:                                               ; preds = %24
  br label %19

50:                                               ; preds = %10, %48, %19
  ret void
}

declare dso_local %struct.timer_entry* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.timer_entry* @TAILQ_NEXT(%struct.timer_entry*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.timer_entry*, i32) #1

declare dso_local i32 @free(%struct.timer_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
