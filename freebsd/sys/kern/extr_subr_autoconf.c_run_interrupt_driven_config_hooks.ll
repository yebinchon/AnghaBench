; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_autoconf.c_run_interrupt_driven_config_hooks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_autoconf.c_run_interrupt_driven_config_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_config_hook = type { i32, i32 (i32)* }

@run_interrupt_driven_config_hooks.running = internal global i32 0, align 4
@intr_config_hook_lock = common dso_local global i32 0, align 4
@next_to_notify = common dso_local global %struct.intr_config_hook* null, align 8
@ich_links = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_interrupt_driven_config_hooks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_interrupt_driven_config_hooks() #0 {
  %1 = alloca %struct.intr_config_hook*, align 8
  %2 = call i32 @mtx_lock(i32* @intr_config_hook_lock)
  %3 = load i32, i32* @run_interrupt_driven_config_hooks.running, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @mtx_unlock(i32* @intr_config_hook_lock)
  br label %27

7:                                                ; preds = %0
  store i32 1, i32* @run_interrupt_driven_config_hooks.running, align 4
  br label %8

8:                                                ; preds = %11, %7
  %9 = load %struct.intr_config_hook*, %struct.intr_config_hook** @next_to_notify, align 8
  %10 = icmp ne %struct.intr_config_hook* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.intr_config_hook*, %struct.intr_config_hook** @next_to_notify, align 8
  store %struct.intr_config_hook* %12, %struct.intr_config_hook** %1, align 8
  %13 = load %struct.intr_config_hook*, %struct.intr_config_hook** %1, align 8
  %14 = load i32, i32* @ich_links, align 4
  %15 = call %struct.intr_config_hook* @TAILQ_NEXT(%struct.intr_config_hook* %13, i32 %14)
  store %struct.intr_config_hook* %15, %struct.intr_config_hook** @next_to_notify, align 8
  %16 = call i32 @mtx_unlock(i32* @intr_config_hook_lock)
  %17 = load %struct.intr_config_hook*, %struct.intr_config_hook** %1, align 8
  %18 = getelementptr inbounds %struct.intr_config_hook, %struct.intr_config_hook* %17, i32 0, i32 1
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.intr_config_hook*, %struct.intr_config_hook** %1, align 8
  %21 = getelementptr inbounds %struct.intr_config_hook, %struct.intr_config_hook* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %19(i32 %22)
  %24 = call i32 @mtx_lock(i32* @intr_config_hook_lock)
  br label %8

25:                                               ; preds = %8
  store i32 0, i32* @run_interrupt_driven_config_hooks.running, align 4
  %26 = call i32 @mtx_unlock(i32* @intr_config_hook_lock)
  br label %27

27:                                               ; preds = %25, %5
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.intr_config_hook* @TAILQ_NEXT(%struct.intr_config_hook*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
