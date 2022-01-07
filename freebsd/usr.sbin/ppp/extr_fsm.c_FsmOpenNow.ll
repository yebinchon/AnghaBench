; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmOpenNow.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmOpenNow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32 (i32, %struct.fsm*)* }
%struct.TYPE_4__ = type { i32 (%struct.fsm*)* }

@ST_STOPPED = common dso_local global i64 0, align 8
@ST_STARTING = common dso_local global i64 0, align 8
@FSM_REQ_TIMER = common dso_local global i32 0, align 4
@ST_REQSENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @FsmOpenNow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmOpenNow(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsm*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.fsm*
  store %struct.fsm* %5, %struct.fsm** %3, align 8
  %6 = load %struct.fsm*, %struct.fsm** %3, align 8
  %7 = getelementptr inbounds %struct.fsm, %struct.fsm* %6, i32 0, i32 3
  %8 = call i32 @timer_Stop(i32* %7)
  %9 = load %struct.fsm*, %struct.fsm** %3, align 8
  %10 = getelementptr inbounds %struct.fsm, %struct.fsm* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ST_STOPPED, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %1
  %15 = load %struct.fsm*, %struct.fsm** %3, align 8
  %16 = getelementptr inbounds %struct.fsm, %struct.fsm* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ST_STARTING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %14
  %21 = load %struct.fsm*, %struct.fsm** %3, align 8
  %22 = getelementptr inbounds %struct.fsm, %struct.fsm* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %24, align 8
  %26 = load %struct.fsm*, %struct.fsm** %3, align 8
  %27 = call i32 %25(%struct.fsm* %26)
  %28 = load %struct.fsm*, %struct.fsm** %3, align 8
  %29 = getelementptr inbounds %struct.fsm, %struct.fsm* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %31, align 8
  %33 = load %struct.fsm*, %struct.fsm** %3, align 8
  %34 = getelementptr inbounds %struct.fsm, %struct.fsm* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.fsm*, %struct.fsm** %3, align 8
  %39 = call i32 %32(i32 %37, %struct.fsm* %38)
  br label %40

40:                                               ; preds = %20, %14
  %41 = load %struct.fsm*, %struct.fsm** %3, align 8
  %42 = load i32, i32* @FSM_REQ_TIMER, align 4
  %43 = call i32 @FsmInitRestartCounter(%struct.fsm* %41, i32 %42)
  %44 = load %struct.fsm*, %struct.fsm** %3, align 8
  %45 = call i32 @FsmSendConfigReq(%struct.fsm* %44)
  %46 = load %struct.fsm*, %struct.fsm** %3, align 8
  %47 = load i32, i32* @ST_REQSENT, align 4
  %48 = call i32 @NewState(%struct.fsm* %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @FsmInitRestartCounter(%struct.fsm*, i32) #1

declare dso_local i32 @FsmSendConfigReq(%struct.fsm*) #1

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
