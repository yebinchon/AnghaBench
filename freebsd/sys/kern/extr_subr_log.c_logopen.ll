; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.cdev = type { i32 }
%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@log_wakeups_per_second = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"syslog wakeup is less than one.  Adjusting to 1.\0A\00", align 1
@msgbuf_lock = common dso_local global i32 0, align 4
@log_open = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@logsoftc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SBT_1S = common dso_local global i32 0, align 4
@logtimeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @logopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %10 = load i32, i32* @log_wakeups_per_second, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @log_wakeups_per_second, align 4
  br label %14

14:                                               ; preds = %12, %4
  %15 = call i32 @mtx_lock(i32* @msgbuf_lock)
  %16 = load i32, i32* @log_open, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = call i32 @mtx_unlock(i32* @msgbuf_lock)
  %20 = load i32, i32* @EBUSY, align 4
  store i32 %20, i32* %5, align 4
  br label %35

21:                                               ; preds = %14
  store i32 1, i32* @log_open, align 4
  %22 = load i32, i32* @SBT_1S, align 4
  %23 = load i32, i32* @log_wakeups_per_second, align 4
  %24 = sdiv i32 %22, %23
  %25 = load i32, i32* @logtimeout, align 4
  %26 = call i32 @C_PREL(i32 1)
  %27 = call i32 @callout_reset_sbt(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @logsoftc, i32 0, i32 1), i32 %24, i32 0, i32 %25, i32* null, i32 %26)
  %28 = call i32 @mtx_unlock(i32* @msgbuf_lock)
  %29 = load %struct.thread*, %struct.thread** %9, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fsetown(i32 %33, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @logsoftc, i32 0, i32 0))
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %21, %18
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @C_PREL(i32) #1

declare dso_local i32 @fsetown(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
