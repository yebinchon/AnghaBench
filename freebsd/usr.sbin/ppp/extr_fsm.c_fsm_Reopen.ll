; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Reopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_fsm_Reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 (i32, %struct.fsm*)* }
%struct.TYPE_3__ = type { i32 (%struct.fsm*)* }

@ST_OPENED = common dso_local global i64 0, align 8
@FSM_REQ_TIMER = common dso_local global i32 0, align 4
@ST_REQSENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsm_Reopen(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %3 = load %struct.fsm*, %struct.fsm** %2, align 8
  %4 = getelementptr inbounds %struct.fsm, %struct.fsm* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ST_OPENED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = load %struct.fsm*, %struct.fsm** %2, align 8
  %10 = getelementptr inbounds %struct.fsm, %struct.fsm* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %12, align 8
  %14 = load %struct.fsm*, %struct.fsm** %2, align 8
  %15 = call i32 %13(%struct.fsm* %14)
  %16 = load %struct.fsm*, %struct.fsm** %2, align 8
  %17 = load i32, i32* @FSM_REQ_TIMER, align 4
  %18 = call i32 @FsmInitRestartCounter(%struct.fsm* %16, i32 %17)
  %19 = load %struct.fsm*, %struct.fsm** %2, align 8
  %20 = call i32 @FsmSendConfigReq(%struct.fsm* %19)
  %21 = load %struct.fsm*, %struct.fsm** %2, align 8
  %22 = load i32, i32* @ST_REQSENT, align 4
  %23 = call i32 @NewState(%struct.fsm* %21, i32 %22)
  %24 = load %struct.fsm*, %struct.fsm** %2, align 8
  %25 = getelementptr inbounds %struct.fsm, %struct.fsm* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %27, align 8
  %29 = load %struct.fsm*, %struct.fsm** %2, align 8
  %30 = getelementptr inbounds %struct.fsm, %struct.fsm* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fsm*, %struct.fsm** %2, align 8
  %35 = call i32 %28(i32 %33, %struct.fsm* %34)
  br label %36

36:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @FsmInitRestartCounter(%struct.fsm*, i32) #1

declare dso_local i32 @FsmSendConfigReq(%struct.fsm*) #1

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
