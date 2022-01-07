; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvTermReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvTermReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32 (i32, %struct.fsm*)* }
%struct.TYPE_5__ = type { i32 (%struct.fsm*, i32)*, i32 (%struct.fsm*)* }
%struct.TYPE_4__ = type { i32 }
%struct.fsmheader = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s: Oops, RTR in %s\0A\00", align 1
@FSM_TRM_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, %struct.fsmheader*, %struct.mbuf*)* @FsmRecvTermReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmRecvTermReq(%struct.fsm* %0, %struct.fsmheader* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.fsmheader*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.fsm* %0, %struct.fsm** %4, align 8
  store %struct.fsmheader* %1, %struct.fsmheader** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %7 = load %struct.fsm*, %struct.fsm** %4, align 8
  %8 = getelementptr inbounds %struct.fsm, %struct.fsm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %88 [
    i32 133, label %10
    i32 130, label %10
    i32 135, label %24
    i32 129, label %24
    i32 134, label %24
    i32 128, label %24
    i32 131, label %24
    i32 137, label %35
    i32 136, label %35
    i32 132, label %48
  ]

10:                                               ; preds = %3, %3
  %11 = load %struct.fsm*, %struct.fsm** %4, align 8
  %12 = getelementptr inbounds %struct.fsm, %struct.fsm* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.fsm*, %struct.fsm** %4, align 8
  %15 = getelementptr inbounds %struct.fsm, %struct.fsm* %14, i32 0, i32 5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.fsm*, %struct.fsm** %4, align 8
  %20 = getelementptr inbounds %struct.fsm, %struct.fsm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @State2Nam(i32 %21)
  %23 = call i32 @log_Printf(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22)
  br label %88

24:                                               ; preds = %3, %3, %3, %3, %3
  %25 = load %struct.fsm*, %struct.fsm** %4, align 8
  %26 = getelementptr inbounds %struct.fsm, %struct.fsm* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.fsm*, i32)*, i32 (%struct.fsm*, i32)** %28, align 8
  %30 = load %struct.fsm*, %struct.fsm** %4, align 8
  %31 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %32 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 %29(%struct.fsm* %30, i32 %33)
  br label %88

35:                                               ; preds = %3, %3
  %36 = load %struct.fsm*, %struct.fsm** %4, align 8
  %37 = getelementptr inbounds %struct.fsm, %struct.fsm* %36, i32 0, i32 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (%struct.fsm*, i32)*, i32 (%struct.fsm*, i32)** %39, align 8
  %41 = load %struct.fsm*, %struct.fsm** %4, align 8
  %42 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %43 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 %40(%struct.fsm* %41, i32 %44)
  %46 = load %struct.fsm*, %struct.fsm** %4, align 8
  %47 = call i32 @NewState(%struct.fsm* %46, i32 131)
  br label %88

48:                                               ; preds = %3
  %49 = load %struct.fsm*, %struct.fsm** %4, align 8
  %50 = getelementptr inbounds %struct.fsm, %struct.fsm* %49, i32 0, i32 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %52, align 8
  %54 = load %struct.fsm*, %struct.fsm** %4, align 8
  %55 = call i32 %53(%struct.fsm* %54)
  %56 = load %struct.fsm*, %struct.fsm** %4, align 8
  %57 = getelementptr inbounds %struct.fsm, %struct.fsm* %56, i32 0, i32 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32 (%struct.fsm*, i32)*, i32 (%struct.fsm*, i32)** %59, align 8
  %61 = load %struct.fsm*, %struct.fsm** %4, align 8
  %62 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %63 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %60(%struct.fsm* %61, i32 %64)
  %66 = load %struct.fsm*, %struct.fsm** %4, align 8
  %67 = load i32, i32* @FSM_TRM_TIMER, align 4
  %68 = call i32 @FsmInitRestartCounter(%struct.fsm* %66, i32 %67)
  %69 = load %struct.fsm*, %struct.fsm** %4, align 8
  %70 = getelementptr inbounds %struct.fsm, %struct.fsm* %69, i32 0, i32 3
  %71 = call i32 @timer_Start(i32* %70)
  %72 = load %struct.fsm*, %struct.fsm** %4, align 8
  %73 = getelementptr inbounds %struct.fsm, %struct.fsm* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load %struct.fsm*, %struct.fsm** %4, align 8
  %75 = call i32 @NewState(%struct.fsm* %74, i32 128)
  %76 = load %struct.fsm*, %struct.fsm** %4, align 8
  %77 = getelementptr inbounds %struct.fsm, %struct.fsm* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %79, align 8
  %81 = load %struct.fsm*, %struct.fsm** %4, align 8
  %82 = getelementptr inbounds %struct.fsm, %struct.fsm* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fsm*, %struct.fsm** %4, align 8
  %87 = call i32 %80(i32 %85, %struct.fsm* %86)
  br label %88

88:                                               ; preds = %3, %48, %35, %24, %10
  %89 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %90 = call i32 @m_freem(%struct.mbuf* %89)
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @State2Nam(i32) #1

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

declare dso_local i32 @FsmInitRestartCounter(%struct.fsm*, i32) #1

declare dso_local i32 @timer_Start(i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
