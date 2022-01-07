; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_SendResetReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ccp.c_ccp_SendResetReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32 }
%struct.ccp = type { i32, i32 }

@CODE_RESETREQ = common dso_local global i32 0, align 4
@MB_CCPOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_SendResetReq(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.ccp*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %4 = load %struct.fsm*, %struct.fsm** %2, align 8
  %5 = call %struct.ccp* @fsm2ccp(%struct.fsm* %4)
  store %struct.ccp* %5, %struct.ccp** %3, align 8
  %6 = load %struct.fsm*, %struct.fsm** %2, align 8
  %7 = getelementptr inbounds %struct.fsm, %struct.fsm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ccp*, %struct.ccp** %3, align 8
  %10 = getelementptr inbounds %struct.ccp, %struct.ccp* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ccp*, %struct.ccp** %3, align 8
  %12 = getelementptr inbounds %struct.ccp, %struct.ccp* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 4
  %13 = load %struct.fsm*, %struct.fsm** %2, align 8
  %14 = load i32, i32* @CODE_RESETREQ, align 4
  %15 = load %struct.fsm*, %struct.fsm** %2, align 8
  %16 = getelementptr inbounds %struct.fsm, %struct.fsm* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MB_CCPOUT, align 4
  %19 = call i32 @fsm_Output(%struct.fsm* %13, i32 %14, i32 %17, i32* null, i32 0, i32 %18)
  ret void
}

declare dso_local %struct.ccp* @fsm2ccp(%struct.fsm*) #1

declare dso_local i32 @fsm_Output(%struct.fsm*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
