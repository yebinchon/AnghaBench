; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.tcpcb*)* }
%struct.TYPE_4__ = type { %struct.socket* }
%struct.socket = type { i32 }

@V_tcbinfo = common dso_local global i32 0, align 4
@TCPS_CLOSED = common dso_local global i32 0, align 4
@tcps_drops = common dso_local global i32 0, align 4
@tcps_conndrops = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcpcb* @tcp_drop(%struct.tcpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %7 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %5, align 8
  %11 = call i32 @INP_INFO_LOCK_ASSERT(i32* @V_tcbinfo)
  %12 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %13 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @INP_WLOCK_ASSERT(%struct.TYPE_4__* %14)
  %16 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %17 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @TCPS_HAVERCVDSYN(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %2
  %22 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %23 = load i32, i32* @TCPS_CLOSED, align 4
  %24 = call i32 @tcp_state_change(%struct.tcpcb* %22, i32 %23)
  %25 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %26 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %28, align 8
  %30 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %31 = call i32 %29(%struct.tcpcb* %30)
  %32 = load i32, i32* @tcps_drops, align 4
  %33 = call i32 @TCPSTAT_INC(i32 %32)
  br label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @tcps_conndrops, align 4
  %36 = call i32 @TCPSTAT_INC(i32 %35)
  br label %37

37:                                               ; preds = %34, %21
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %43 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %41, %37
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.socket*, %struct.socket** %5, align 8
  %53 = getelementptr inbounds %struct.socket, %struct.socket* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %55 = call %struct.tcpcb* @tcp_close(%struct.tcpcb* %54)
  ret %struct.tcpcb* %55
}

declare dso_local i32 @INP_INFO_LOCK_ASSERT(i32*) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.TYPE_4__*) #1

declare dso_local i64 @TCPS_HAVERCVDSYN(i32) #1

declare dso_local i32 @tcp_state_change(%struct.tcpcb*, i32) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local %struct.tcpcb* @tcp_close(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
