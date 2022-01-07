; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timeout_keepalive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timeout_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i32, %struct.inpcb*, %struct.TYPE_4__* }
%struct.inpcb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.tcp_rack = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.tcptemp = type { i32, i32 }
%struct.mbuf = type { i32 }

@TT_STOPPED = common dso_local global i32 0, align 4
@PACE_TMR_KEEP = common dso_local global i32 0, align 4
@RACK_TO_FRM_KEEP = common dso_local global i32 0, align 4
@tcps_keeptimeo = common dso_local global i32 0, align 4
@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@tcp_always_keepalive = common dso_local global i64 0, align 8
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@TCPS_CLOSING = common dso_local global i64 0, align 8
@ticks = common dso_local global i64 0, align 8
@tcps_keepprobe = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@tcps_keepdrops = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_rack*, i32)* @rack_timeout_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_timeout_keepalive(%struct.tcpcb* %0, %struct.tcp_rack* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcptemp*, align 8
  %9 = alloca %struct.inpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %11 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %10, i32 0, i32 5
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TT_STOPPED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %111

19:                                               ; preds = %3
  %20 = load i32, i32* @PACE_TMR_KEEP, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %23 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %28 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %27, i32 0, i32 4
  %29 = load %struct.inpcb*, %struct.inpcb** %28, align 8
  store %struct.inpcb* %29, %struct.inpcb** %9, align 8
  %30 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %31 = load i32, i32* @RACK_TO_FRM_KEEP, align 4
  %32 = call i32 @rack_log_to_event(%struct.tcp_rack* %30, i32 %31, i32 0)
  %33 = load i32, i32* @tcps_keeptimeo, align 4
  %34 = call i32 @TCPSTAT_INC(i32 %33)
  %35 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %36 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  br label %103

41:                                               ; preds = %19
  %42 = load i64, i64* @tcp_always_keepalive, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %46 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SO_KEEPALIVE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %44, %41
  %54 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %55 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TCPS_CLOSING, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %53
  %60 = load i64, i64* @ticks, align 8
  %61 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %66 = call i64 @TP_KEEPIDLE(%struct.tcpcb* %65)
  %67 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %68 = call i64 @TP_MAXIDLE(%struct.tcpcb* %67)
  %69 = add nsw i64 %66, %68
  %70 = icmp sge i64 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %103

72:                                               ; preds = %59
  %73 = load i32, i32* @tcps_keepprobe, align 4
  %74 = call i32 @TCPSTAT_INC(i32 %73)
  %75 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %76 = call %struct.tcptemp* @tcpip_maketemplate(%struct.inpcb* %75)
  store %struct.tcptemp* %76, %struct.tcptemp** %8, align 8
  %77 = load %struct.tcptemp*, %struct.tcptemp** %8, align 8
  %78 = icmp ne %struct.tcptemp* %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %72
  %80 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %81 = load %struct.tcptemp*, %struct.tcptemp** %8, align 8
  %82 = getelementptr inbounds %struct.tcptemp, %struct.tcptemp* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.tcptemp*, %struct.tcptemp** %8, align 8
  %85 = getelementptr inbounds %struct.tcptemp, %struct.tcptemp* %84, i32 0, i32 0
  %86 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %90 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @tcp_respond(%struct.tcpcb* %80, i32 %83, i32* %85, %struct.mbuf* null, i32 %88, i64 %92, i32 0)
  %94 = load %struct.tcptemp*, %struct.tcptemp** %8, align 8
  %95 = load i32, i32* @M_TEMP, align 4
  %96 = call i32 @free(%struct.tcptemp* %94, i32 %95)
  br label %97

97:                                               ; preds = %79, %72
  br label %98

98:                                               ; preds = %97, %53, %44
  %99 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %100 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @rack_start_hpts_timer(%struct.tcp_rack* %99, %struct.tcpcb* %100, i32 %101, i32 0, i32 0, i32 0)
  store i32 1, i32* %4, align 4
  br label %111

103:                                              ; preds = %71, %40
  %104 = load i32, i32* @tcps_keepdrops, align 4
  %105 = call i32 @TCPSTAT_INC(i32 %104)
  %106 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %107 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @ETIMEDOUT, align 4
  %110 = call i32 @tcp_set_inp_to_drop(i32 %108, i32 %109)
  store i32 1, i32* %4, align 4
  br label %111

111:                                              ; preds = %103, %98, %18
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @rack_log_to_event(%struct.tcp_rack*, i32, i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i64 @TP_KEEPIDLE(%struct.tcpcb*) #1

declare dso_local i64 @TP_MAXIDLE(%struct.tcpcb*) #1

declare dso_local %struct.tcptemp* @tcpip_maketemplate(%struct.inpcb*) #1

declare dso_local i32 @tcp_respond(%struct.tcpcb*, i32, i32*, %struct.mbuf*, i32, i64, i32) #1

declare dso_local i32 @free(%struct.tcptemp*, i32) #1

declare dso_local i32 @rack_start_hpts_timer(%struct.tcp_rack*, %struct.tcpcb*, i32, i32, i32, i32) #1

declare dso_local i32 @tcp_set_inp_to_drop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
