; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_trigger.c_audit_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_trigger.c_audit_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.trigger_info = type { i32 }

@audit_trigger_mtx = common dso_local global i32 0, align 4
@audit_isopen = common dso_local global i64 0, align 8
@trigger_list = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@M_AUDITTRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @audit_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.trigger_info*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = call i32 @mtx_lock(i32* @audit_trigger_mtx)
  store i64 0, i64* @audit_isopen, align 8
  br label %11

11:                                               ; preds = %15, %4
  %12 = call i32 @TAILQ_EMPTY(i32* @trigger_list)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = call %struct.trigger_info* @TAILQ_FIRST(i32* @trigger_list)
  store %struct.trigger_info* %16, %struct.trigger_info** %9, align 8
  %17 = load %struct.trigger_info*, %struct.trigger_info** %9, align 8
  %18 = load i32, i32* @list, align 4
  %19 = call i32 @TAILQ_REMOVE(i32* @trigger_list, %struct.trigger_info* %17, i32 %18)
  %20 = load %struct.trigger_info*, %struct.trigger_info** %9, align 8
  %21 = load i32, i32* @M_AUDITTRIGGER, align 4
  %22 = call i32 @free(%struct.trigger_info* %20, i32 %21)
  br label %11

23:                                               ; preds = %11
  %24 = call i32 @mtx_unlock(i32* @audit_trigger_mtx)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.trigger_info* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.trigger_info*, i32) #1

declare dso_local i32 @free(%struct.trigger_info*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
