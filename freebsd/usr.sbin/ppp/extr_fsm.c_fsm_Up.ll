; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Up.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"FSM: Using \22%s\22 as a transport\0A\00", align 1
@ST_CLOSED = common dso_local global i32 0, align 4
@FSM_REQ_TIMER = common dso_local global i32 0, align 4
@ST_REQSENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: Oops, Up at %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_Up(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %3 = load %struct.fsm*, %struct.fsm** %2, align 8
  %4 = getelementptr inbounds %struct.fsm, %struct.fsm* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %28 [
    i32 129, label %6
    i32 128, label %19
  ]

6:                                                ; preds = %1
  %7 = load %struct.fsm*, %struct.fsm** %2, align 8
  %8 = getelementptr inbounds %struct.fsm, %struct.fsm* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.fsm*, %struct.fsm** %2, align 8
  %11 = getelementptr inbounds %struct.fsm, %struct.fsm* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.fsm*, %struct.fsm** %2, align 8
  %17 = load i32, i32* @ST_CLOSED, align 4
  %18 = call i32 @NewState(%struct.fsm* %16, i32 %17)
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.fsm*, %struct.fsm** %2, align 8
  %21 = load i32, i32* @FSM_REQ_TIMER, align 4
  %22 = call i32 @FsmInitRestartCounter(%struct.fsm* %20, i32 %21)
  %23 = load %struct.fsm*, %struct.fsm** %2, align 8
  %24 = call i32 @FsmSendConfigReq(%struct.fsm* %23)
  %25 = load %struct.fsm*, %struct.fsm** %2, align 8
  %26 = load i32, i32* @ST_REQSENT, align 4
  %27 = call i32 @NewState(%struct.fsm* %25, i32 %26)
  br label %42

28:                                               ; preds = %1
  %29 = load %struct.fsm*, %struct.fsm** %2, align 8
  %30 = getelementptr inbounds %struct.fsm, %struct.fsm* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.fsm*, %struct.fsm** %2, align 8
  %33 = getelementptr inbounds %struct.fsm, %struct.fsm* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fsm*, %struct.fsm** %2, align 8
  %38 = getelementptr inbounds %struct.fsm, %struct.fsm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @State2Nam(i32 %39)
  %41 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %28, %19, %6
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

declare dso_local i32 @FsmInitRestartCounter(%struct.fsm*, i32) #1

declare dso_local i32 @FsmSendConfigReq(%struct.fsm*) #1

declare dso_local i32 @State2Nam(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
