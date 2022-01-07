; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timeout_delack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_timeout_delack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tcp_rack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@TT_STOPPED = common dso_local global i32 0, align 4
@RACK_TO_FRM_DELACK = common dso_local global i32 0, align 4
@TF_DELACK = common dso_local global i32 0, align 4
@TF_ACKNOW = common dso_local global i32 0, align 4
@tcps_delack = common dso_local global i32 0, align 4
@PACE_TMR_DELACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpcb*, %struct.tcp_rack*, i32)* @rack_timeout_delack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rack_timeout_delack(%struct.tcpcb* %0, %struct.tcp_rack* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.tcp_rack*, align 8
  %7 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %5, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %9 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TT_STOPPED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %19 = load i32, i32* @RACK_TO_FRM_DELACK, align 4
  %20 = call i32 @rack_log_to_event(%struct.tcp_rack* %18, i32 %19, i32 0)
  %21 = load i32, i32* @TF_DELACK, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %24 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @TF_ACKNOW, align 4
  %28 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @tcps_delack, align 4
  %33 = call i32 @TCPSTAT_INC(i32 %32)
  %34 = load i32, i32* @PACE_TMR_DELACK, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.tcp_rack*, %struct.tcp_rack** %6, align 8
  %37 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %35
  store i32 %40, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %17, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @rack_log_to_event(%struct.tcp_rack*, i32, i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
