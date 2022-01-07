; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_StoppedTimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_StoppedTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"%s: Stopped timer expired\0A\00", align 1
@TIMER_RUNNING = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: %s: aborting open delay due to stopped timer\0A\00", align 1
@ST_STOPPED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @StoppedTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StoppedTimeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsm*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.fsm*
  store %struct.fsm* %5, %struct.fsm** %3, align 8
  %6 = load %struct.fsm*, %struct.fsm** %3, align 8
  %7 = getelementptr inbounds %struct.fsm, %struct.fsm* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.fsm*, %struct.fsm** %3, align 8
  %10 = getelementptr inbounds %struct.fsm, %struct.fsm* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.fsm*, %struct.fsm** %3, align 8
  %16 = getelementptr inbounds %struct.fsm, %struct.fsm* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TIMER_RUNNING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load i32, i32* @LogWARN, align 4
  %23 = load %struct.fsm*, %struct.fsm** %3, align 8
  %24 = getelementptr inbounds %struct.fsm, %struct.fsm* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fsm*, %struct.fsm** %3, align 8
  %29 = getelementptr inbounds %struct.fsm, %struct.fsm* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.fsm*, %struct.fsm** %3, align 8
  %33 = getelementptr inbounds %struct.fsm, %struct.fsm* %32, i32 0, i32 1
  %34 = call i32 @timer_Stop(%struct.TYPE_4__* %33)
  br label %35

35:                                               ; preds = %21, %1
  %36 = load %struct.fsm*, %struct.fsm** %3, align 8
  %37 = getelementptr inbounds %struct.fsm, %struct.fsm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ST_STOPPED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.fsm*, %struct.fsm** %3, align 8
  %43 = call i32 @fsm2initial(%struct.fsm* %42)
  br label %44

44:                                               ; preds = %41, %35
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @timer_Stop(%struct.TYPE_4__*) #1

declare dso_local i32 @fsm2initial(%struct.fsm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
