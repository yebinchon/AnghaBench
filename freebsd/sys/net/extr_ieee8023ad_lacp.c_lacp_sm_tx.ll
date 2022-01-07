; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@LACP_STATE_AGGREGATION = common dso_local global i32 0, align 4
@LACP_STATE_ACTIVITY = common dso_local global i32 0, align 4
@LACP_PORT_NTT = common dso_local global i32 0, align 4
@LACP_FAST_PERIODIC_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"rate limited pdu\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Dropping TX PDU\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"lacpdu transmit failure, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*)* @lacp_sm_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_sm_tx(%struct.lacp_port* %0) #0 {
  %2 = alloca %struct.lacp_port*, align 8
  %3 = alloca i32, align 4
  store %struct.lacp_port* %0, %struct.lacp_port** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %5 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @LACP_STATE_AGGREGATION, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %12 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LACP_STATE_ACTIVITY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %10
  %18 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %19 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @LACP_STATE_ACTIVITY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %17, %1
  %26 = load i32, i32* @LACP_PORT_NTT, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %29 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %25, %17, %10
  %33 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %34 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LACP_PORT_NTT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %89

40:                                               ; preds = %32
  %41 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %42 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %41, i32 0, i32 5
  %43 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %44 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %43, i32 0, i32 4
  %45 = load i32, i32* @LACP_FAST_PERIODIC_TIME, align 4
  %46 = sdiv i32 3, %45
  %47 = call i64 @ppsratecheck(i32* %42, i32* %44, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %51 = call i32 @LACP_DPRINTF(%struct.lacp_port* bitcast ([18 x i8]* @.str to %struct.lacp_port*))
  br label %89

52:                                               ; preds = %40
  %53 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %54 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %53, i32 0, i32 3
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %60 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %58, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %52
  %68 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %69 = call i32 @lacp_xmit_lacpdu(%struct.lacp_port* %68)
  store i32 %69, i32* %3, align 4
  br label %73

70:                                               ; preds = %52
  %71 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %72 = call i32 @LACP_TPRINTF(%struct.lacp_port* bitcast ([17 x i8]* @.str.1 to %struct.lacp_port*))
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %3, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* @LACP_PORT_NTT, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %80 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %89

83:                                               ; preds = %73
  %84 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to %struct.lacp_port*
  %88 = call i32 @LACP_DPRINTF(%struct.lacp_port* %87)
  br label %89

89:                                               ; preds = %39, %49, %83, %76
  ret void
}

declare dso_local i64 @ppsratecheck(i32*, i32*, i32) #1

declare dso_local i32 @LACP_DPRINTF(%struct.lacp_port*) #1

declare dso_local i32 @lacp_xmit_lacpdu(%struct.lacp_port*) #1

declare dso_local i32 @LACP_TPRINTF(%struct.lacp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
