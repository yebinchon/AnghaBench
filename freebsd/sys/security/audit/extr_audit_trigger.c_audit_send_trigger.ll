; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_trigger.c_audit_send_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_trigger.c_audit_send_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trigger_info = type { i32 }

@M_AUDITTRIGGER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@audit_trigger_mtx = common dso_local global i32 0, align 4
@audit_isopen = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@trigger_list = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_send_trigger(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.trigger_info*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @M_AUDITTRIGGER, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = call %struct.trigger_info* @malloc(i32 4, i32 %5, i32 %6)
  store %struct.trigger_info* %7, %struct.trigger_info** %4, align 8
  %8 = call i32 @mtx_lock(i32* @audit_trigger_mtx)
  %9 = load i32, i32* @audit_isopen, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = call i32 @mtx_unlock(i32* @audit_trigger_mtx)
  %13 = load %struct.trigger_info*, %struct.trigger_info** %4, align 8
  %14 = load i32, i32* @M_AUDITTRIGGER, align 4
  %15 = call i32 @free(%struct.trigger_info* %13, i32 %14)
  %16 = load i32, i32* @ENODEV, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.trigger_info*, %struct.trigger_info** %4, align 8
  %20 = getelementptr inbounds %struct.trigger_info, %struct.trigger_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.trigger_info*, %struct.trigger_info** %4, align 8
  %22 = load i32, i32* @list, align 4
  %23 = call i32 @TAILQ_INSERT_TAIL(i32* @trigger_list, %struct.trigger_info* %21, i32 %22)
  %24 = call i32 @wakeup(i32* @trigger_list)
  %25 = call i32 @mtx_unlock(i32* @audit_trigger_mtx)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %17, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.trigger_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.trigger_info*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.trigger_info*, i32) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
