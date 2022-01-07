; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmSendTerminateReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmSendTerminateReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fsm*)* }

@CODE_TERMREQ = common dso_local global i32 0, align 4
@MB_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*)* @FsmSendTerminateReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmSendTerminateReq(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %3 = load %struct.fsm*, %struct.fsm** %2, align 8
  %4 = load i32, i32* @CODE_TERMREQ, align 4
  %5 = load %struct.fsm*, %struct.fsm** %2, align 8
  %6 = getelementptr inbounds %struct.fsm, %struct.fsm* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MB_UNKNOWN, align 4
  %9 = call i32 @fsm_Output(%struct.fsm* %3, i32 %4, i32 %7, i32* null, i32 0, i32 %8)
  %10 = load %struct.fsm*, %struct.fsm** %2, align 8
  %11 = getelementptr inbounds %struct.fsm, %struct.fsm* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %13, align 8
  %15 = load %struct.fsm*, %struct.fsm** %2, align 8
  %16 = call i32 %14(%struct.fsm* %15)
  %17 = load %struct.fsm*, %struct.fsm** %2, align 8
  %18 = getelementptr inbounds %struct.fsm, %struct.fsm* %17, i32 0, i32 1
  %19 = call i32 @timer_Start(i32* %18)
  %20 = load %struct.fsm*, %struct.fsm** %2, align 8
  %21 = getelementptr inbounds %struct.fsm, %struct.fsm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %21, align 8
  ret void
}

declare dso_local i32 @fsm_Output(%struct.fsm*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @timer_Start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
