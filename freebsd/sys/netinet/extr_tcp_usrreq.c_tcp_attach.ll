; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.tcpcb = type { i32 }
%struct.inpcb = type { i32, i32, i32 }
%struct.epoch_tracker = type { i32 }

@V_tcp_sendspace = common dso_local global i32 0, align 4
@V_tcp_recvspace = common dso_local global i32 0, align 4
@SB_AUTOSIZE = common dso_local global i32 0, align 4
@V_tcbinfo = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TCPS_CLOSED = common dso_local global i32 0, align 4
@IN6P_IPV6_V6ONLY = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@INP_IPV6PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @tcp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_attach(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.inpcb*, align 8
  %6 = alloca %struct.epoch_tracker, align 4
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.socket*, %struct.socket** %3, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13, %1
  %20 = load %struct.socket*, %struct.socket** %3, align 8
  %21 = load i32, i32* @V_tcp_sendspace, align 4
  %22 = load i32, i32* @V_tcp_recvspace, align 4
  %23 = call i32 @soreserve(%struct.socket* %20, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %86

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %13
  %30 = load i32, i32* @SB_AUTOSIZE, align 4
  %31 = load %struct.socket*, %struct.socket** %3, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @SB_AUTOSIZE, align 4
  %37 = load %struct.socket*, %struct.socket** %3, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 8
  %42 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @NET_EPOCH_ENTER(i32 %43)
  %45 = load %struct.socket*, %struct.socket** %3, align 8
  %46 = call i32 @in_pcballoc(%struct.socket* %45, i32* @V_tcbinfo)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @NET_EPOCH_EXIT(i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %86

54:                                               ; preds = %29
  %55 = load %struct.socket*, %struct.socket** %3, align 8
  %56 = call %struct.inpcb* @sotoinpcb(%struct.socket* %55)
  store %struct.inpcb* %56, %struct.inpcb** %5, align 8
  %57 = load i32, i32* @INP_IPV4, align 4
  %58 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %59 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %63 = call %struct.tcpcb* @tcp_newtcpcb(%struct.inpcb* %62)
  store %struct.tcpcb* %63, %struct.tcpcb** %4, align 8
  %64 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %65 = icmp eq %struct.tcpcb* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %68 = call i32 @in_pcbdetach(%struct.inpcb* %67)
  %69 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %70 = call i32 @in_pcbfree(%struct.inpcb* %69)
  %71 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @NET_EPOCH_EXIT(i32 %72)
  %74 = load i32, i32* @ENOBUFS, align 4
  store i32 %74, i32* %2, align 4
  br label %86

75:                                               ; preds = %54
  %76 = load i32, i32* @TCPS_CLOSED, align 4
  %77 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %78 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.inpcb*, %struct.inpcb** %5, align 8
  %80 = call i32 @INP_WUNLOCK(%struct.inpcb* %79)
  %81 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @NET_EPOCH_EXIT(i32 %82)
  %84 = load i32, i32* @TCPS_CLOSED, align 4
  %85 = call i32 @TCPSTATES_INC(i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %75, %66, %49, %26
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @in_pcballoc(%struct.socket*, i32*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local %struct.tcpcb* @tcp_newtcpcb(%struct.inpcb*) #1

declare dso_local i32 @in_pcbdetach(%struct.inpcb*) #1

declare dso_local i32 @in_pcbfree(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @TCPSTATES_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
