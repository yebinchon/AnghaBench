; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_LcpLayerUp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lcp.c_LcpLayerUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.physical = type { i32 }
%struct.lcp = type { %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@LogLCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s: LayerUp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsm*)* @LcpLayerUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LcpLayerUp(%struct.fsm* %0) #0 {
  %2 = alloca %struct.fsm*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.lcp*, align 8
  store %struct.fsm* %0, %struct.fsm** %2, align 8
  %5 = load %struct.fsm*, %struct.fsm** %2, align 8
  %6 = getelementptr inbounds %struct.fsm, %struct.fsm* %5, i32 0, i32 1
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = call %struct.physical* @link2physical(%struct.TYPE_8__* %7)
  store %struct.physical* %8, %struct.physical** %3, align 8
  %9 = load %struct.fsm*, %struct.fsm** %2, align 8
  %10 = call %struct.lcp* @fsm2lcp(%struct.fsm* %9)
  store %struct.lcp* %10, %struct.lcp** %4, align 8
  %11 = load i32, i32* @LogLCP, align 4
  %12 = load %struct.fsm*, %struct.fsm** %2, align 8
  %13 = getelementptr inbounds %struct.fsm, %struct.fsm* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @log_Printf(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.physical*, %struct.physical** %3, align 8
  %19 = load %struct.lcp*, %struct.lcp** %4, align 8
  %20 = getelementptr inbounds %struct.lcp, %struct.lcp* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lcp*, %struct.lcp** %4, align 8
  %23 = getelementptr inbounds %struct.lcp, %struct.lcp* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @physical_SetAsyncParams(%struct.physical* %18, i32 %21, i32 %24)
  %26 = load %struct.lcp*, %struct.lcp** %4, align 8
  %27 = call i32 @lqr_Start(%struct.lcp* %26)
  %28 = load %struct.physical*, %struct.physical** %3, align 8
  %29 = getelementptr inbounds %struct.physical, %struct.physical* %28, i32 0, i32 0
  %30 = call i32 @hdlc_StartTimer(i32* %29)
  %31 = load %struct.lcp*, %struct.lcp** %4, align 8
  %32 = getelementptr inbounds %struct.lcp, %struct.lcp* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 3
  %37 = load %struct.fsm*, %struct.fsm** %2, align 8
  %38 = getelementptr inbounds %struct.fsm, %struct.fsm* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load %struct.fsm*, %struct.fsm** %2, align 8
  %41 = getelementptr inbounds %struct.fsm, %struct.fsm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %36, i32* %42, align 4
  %43 = load %struct.fsm*, %struct.fsm** %2, align 8
  %44 = getelementptr inbounds %struct.fsm, %struct.fsm* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 %36, i32* %45, align 8
  %46 = load %struct.lcp*, %struct.lcp** %4, align 8
  %47 = call i32 @lcp_SendIdentification(%struct.lcp* %46)
  ret i32 1
}

declare dso_local %struct.physical* @link2physical(%struct.TYPE_8__*) #1

declare dso_local %struct.lcp* @fsm2lcp(%struct.fsm*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @physical_SetAsyncParams(%struct.physical*, i32, i32) #1

declare dso_local i32 @lqr_Start(%struct.lcp*) #1

declare dso_local i32 @hdlc_StartTimer(i32*) #1

declare dso_local i32 @lcp_SendIdentification(%struct.lcp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
