; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_trigger.c_audit_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_audit_trigger.c_audit_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.trigger_info = type { i32 }

@audit_trigger_mtx = common dso_local global i32 0, align 4
@trigger_list = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"auditd\00", align 1
@list = common dso_local global i32 0, align 4
@M_AUDITTRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @audit_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.trigger_info*, align 8
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.trigger_info* null, %struct.trigger_info** %8, align 8
  %9 = call i32 @mtx_lock(i32* @audit_trigger_mtx)
  br label %10

10:                                               ; preds = %21, %3
  %11 = call i64 @TAILQ_EMPTY(i32* @trigger_list)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load i32, i32* @PSOCK, align 4
  %15 = load i32, i32* @PCATCH, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @msleep(i32* @trigger_list, i32* @audit_trigger_mtx, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %22

21:                                               ; preds = %13
  br label %10

22:                                               ; preds = %20, %10
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = call %struct.trigger_info* @TAILQ_FIRST(i32* @trigger_list)
  store %struct.trigger_info* %26, %struct.trigger_info** %8, align 8
  %27 = load %struct.trigger_info*, %struct.trigger_info** %8, align 8
  %28 = load i32, i32* @list, align 4
  %29 = call i32 @TAILQ_REMOVE(i32* @trigger_list, %struct.trigger_info* %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %22
  %31 = call i32 @mtx_unlock(i32* @audit_trigger_mtx)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load %struct.trigger_info*, %struct.trigger_info** %8, align 8
  %36 = getelementptr inbounds %struct.trigger_info, %struct.trigger_info* %35, i32 0, i32 0
  %37 = load %struct.uio*, %struct.uio** %5, align 8
  %38 = call i32 @uiomove(i32* %36, i32 4, %struct.uio* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.trigger_info*, %struct.trigger_info** %8, align 8
  %40 = load i32, i32* @M_AUDITTRIGGER, align 4
  %41 = call i32 @free(%struct.trigger_info* %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %30
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local %struct.trigger_info* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.trigger_info*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @free(%struct.trigger_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
