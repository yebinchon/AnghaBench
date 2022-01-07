; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logtimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_log.c_logtimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@log_open = common dso_local global i32 0, align 4
@msgbuftrigger = common dso_local global i64 0, align 8
@logsoftc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LOG_RDPRI = common dso_local global i32 0, align 4
@LOG_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@log_wakeup = common dso_local global i32 0, align 4
@log_wakeups_per_second = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"syslog wakeup is less than one.  Adjusting to 1.\0A\00", align 1
@SBT_1S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @logtimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logtimeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @log_open, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %38

6:                                                ; preds = %1
  %7 = load i64, i64* @msgbuftrigger, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %27

10:                                               ; preds = %6
  store i64 0, i64* @msgbuftrigger, align 8
  %11 = load i32, i32* @LOG_RDPRI, align 4
  %12 = call i32 @selwakeuppri(%struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @logsoftc, i32 0, i32 3), i32 %11)
  %13 = call i32 @KNOTE_LOCKED(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @logsoftc, i32 0, i32 3, i32 0), i32 0)
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @logsoftc, i32 0, i32 0), align 8
  %15 = load i32, i32* @LOG_ASYNC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @logsoftc, i32 0, i32 2), align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @SIGIO, align 4
  %23 = call i32 @pgsigio(i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @logsoftc, i32 0, i32 2), i32 %22, i32 0)
  br label %24

24:                                               ; preds = %21, %18, %10
  %25 = load i32, i32* @LOG_RDPRI, align 4
  %26 = call i32 @cv_broadcastpri(i32* @log_wakeup, i32 %25)
  br label %27

27:                                               ; preds = %24, %9
  %28 = load i32, i32* @log_wakeups_per_second, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @log_wakeups_per_second, align 4
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* @SBT_1S, align 4
  %34 = load i32, i32* @log_wakeups_per_second, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @C_PREL(i32 1)
  %37 = call i32 @callout_reset_sbt(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @logsoftc, i32 0, i32 1), i32 %35, i32 0, void (i8*)* @logtimeout, i32* null, i32 %36)
  br label %38

38:                                               ; preds = %32, %5
  ret void
}

declare dso_local i32 @selwakeuppri(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @pgsigio(i32**, i32, i32) #1

declare dso_local i32 @cv_broadcastpri(i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, void (i8*)*, i32*, i32) #1

declare dso_local i32 @C_PREL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
