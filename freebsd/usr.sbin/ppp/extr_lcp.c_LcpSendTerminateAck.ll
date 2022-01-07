; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_LcpSendTerminateAck.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_LcpSendTerminateAck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32 }
%struct.physical = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DATALINK_CBCP = common dso_local global i64 0, align 8
@CODE_TERMACK = common dso_local global i32 0, align 4
@MB_LCPOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, i32)* @LcpSendTerminateAck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LcpSendTerminateAck(%struct.fsm* %0, i32 %1) #0 {
  %3 = alloca %struct.fsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.physical*, align 8
  store %struct.fsm* %0, %struct.fsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fsm*, %struct.fsm** %3, align 8
  %7 = getelementptr inbounds %struct.fsm, %struct.fsm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.physical* @link2physical(i32 %8)
  store %struct.physical* %9, %struct.physical** %5, align 8
  %10 = load %struct.physical*, %struct.physical** %5, align 8
  %11 = icmp ne %struct.physical* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.physical*, %struct.physical** %5, align 8
  %14 = getelementptr inbounds %struct.physical, %struct.physical* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DATALINK_CBCP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.physical*, %struct.physical** %5, align 8
  %22 = call i32 @cbcp_ReceiveTerminateReq(%struct.physical* %21)
  br label %23

23:                                               ; preds = %20, %12, %2
  %24 = load %struct.fsm*, %struct.fsm** %3, align 8
  %25 = load i32, i32* @CODE_TERMACK, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MB_LCPOUT, align 4
  %28 = call i32 @fsm_Output(%struct.fsm* %24, i32 %25, i32 %26, i32* null, i32 0, i32 %27)
  ret void
}

declare dso_local %struct.physical* @link2physical(i32) #1

declare dso_local i32 @cbcp_ReceiveTerminateReq(%struct.physical*) #1

declare dso_local i32 @fsm_Output(%struct.fsm*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
