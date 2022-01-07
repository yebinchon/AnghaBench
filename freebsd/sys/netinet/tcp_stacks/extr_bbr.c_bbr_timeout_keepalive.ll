; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timeout_keepalive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_timeout_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i64, i64, i32, %struct.inpcb* }
%struct.inpcb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tcp_bbr = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.tcptemp = type { i32, i32 }
%struct.mbuf = type { i32 }

@PACE_TMR_KEEP = common dso_local global i32 0, align 4
@BBR_TO_FRM_KEEP = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_bbr*, i32)* @bbr_timeout_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_timeout_keepalive(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcptemp*, align 8
  %9 = alloca %struct.inpcb*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %11 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %108

15:                                               ; preds = %3
  %16 = load i32, i32* @PACE_TMR_KEEP, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %19 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 4
  %25 = load %struct.inpcb*, %struct.inpcb** %24, align 8
  store %struct.inpcb* %25, %struct.inpcb** %9, align 8
  %26 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @BBR_TO_FRM_KEEP, align 4
  %29 = call i32 @bbr_log_to_event(%struct.tcp_bbr* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @tcps_keeptimeo, align 4
  %31 = call i32 @TCPSTAT_INC(i32 %30)
  %32 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %15
  br label %100

38:                                               ; preds = %15
  %39 = load i64, i64* @tcp_always_keepalive, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %38
  %42 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %43 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SO_KEEPALIVE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %41, %38
  %51 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %52 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @TCPS_CLOSING, align 8
  %55 = icmp sle i64 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %50
  %57 = load i64, i64* @ticks, align 8
  %58 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %59 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %63 = call i64 @TP_KEEPIDLE(%struct.tcpcb* %62)
  %64 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %65 = call i64 @TP_MAXIDLE(%struct.tcpcb* %64)
  %66 = add nsw i64 %63, %65
  %67 = icmp sge i64 %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %100

69:                                               ; preds = %56
  %70 = load i32, i32* @tcps_keepprobe, align 4
  %71 = call i32 @TCPSTAT_INC(i32 %70)
  %72 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %73 = call %struct.tcptemp* @tcpip_maketemplate(%struct.inpcb* %72)
  store %struct.tcptemp* %73, %struct.tcptemp** %8, align 8
  %74 = load %struct.tcptemp*, %struct.tcptemp** %8, align 8
  %75 = icmp ne %struct.tcptemp* %74, null
  br i1 %75, label %76, label %94

76:                                               ; preds = %69
  %77 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %78 = load %struct.tcptemp*, %struct.tcptemp** %8, align 8
  %79 = getelementptr inbounds %struct.tcptemp, %struct.tcptemp* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tcptemp*, %struct.tcptemp** %8, align 8
  %82 = getelementptr inbounds %struct.tcptemp, %struct.tcptemp* %81, i32 0, i32 0
  %83 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %84 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, 1
  %90 = call i32 @tcp_respond(%struct.tcpcb* %77, i32 %80, i32* %82, %struct.mbuf* null, i32 %85, i64 %89, i32 0)
  %91 = load %struct.tcptemp*, %struct.tcptemp** %8, align 8
  %92 = load i32, i32* @M_TEMP, align 4
  %93 = call i32 @free(%struct.tcptemp* %91, i32 %92)
  br label %94

94:                                               ; preds = %76, %69
  br label %95

95:                                               ; preds = %94, %50, %41
  %96 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %97 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @bbr_start_hpts_timer(%struct.tcp_bbr* %96, %struct.tcpcb* %97, i32 %98, i32 4, i32 0, i32 0)
  store i32 1, i32* %4, align 4
  br label %108

100:                                              ; preds = %68, %37
  %101 = load i32, i32* @tcps_keepdrops, align 4
  %102 = call i32 @TCPSTAT_INC(i32 %101)
  %103 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %104 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ETIMEDOUT, align 4
  %107 = call i32 @tcp_set_inp_to_drop(i32 %105, i32 %106)
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %100, %95, %14
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @bbr_log_to_event(%struct.tcp_bbr*, i32, i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i64 @TP_KEEPIDLE(%struct.tcpcb*) #1

declare dso_local i64 @TP_MAXIDLE(%struct.tcpcb*) #1

declare dso_local %struct.tcptemp* @tcpip_maketemplate(%struct.inpcb*) #1

declare dso_local i32 @tcp_respond(%struct.tcpcb*, i32, i32*, %struct.mbuf*, i32, i64, i32) #1

declare dso_local i32 @free(%struct.tcptemp*, i32) #1

declare dso_local i32 @bbr_start_hpts_timer(%struct.tcp_bbr*, %struct.tcpcb*, i32, i32, i32, i32) #1

declare dso_local i32 @tcp_set_inp_to_drop(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
