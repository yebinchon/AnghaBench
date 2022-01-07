; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_mtudisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_subr.c_tcp_mtudisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, %struct.socket* }
%struct.socket = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.tcpcb = type { i64, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.tcpcb*)* }

@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"tcp_mtudisc: tp == NULL\00", align 1
@tcps_mturesent = common dso_local global i32 0, align 4
@TF_SACK_PERMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inpcb*, i32)* @tcp_mtudisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_mtudisc(%struct.inpcb* %0, i32 %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcpcb*, align 8
  %6 = alloca %struct.socket*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %8 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %7)
  %9 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @INP_TIMEWAIT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @INP_DROPPED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %2
  br label %93

23:                                               ; preds = %15
  %24 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %25 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %24)
  store %struct.tcpcb* %25, %struct.tcpcb** %5, align 8
  %26 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %27 = icmp ne %struct.tcpcb* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @tcp_mss_update(%struct.tcpcb* %30, i32 -1, i32 %31, i32* null, i32* null)
  %33 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %34 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %33, i32 0, i32 1
  %35 = load %struct.socket*, %struct.socket** %34, align 8
  store %struct.socket* %35, %struct.socket** %6, align 8
  %36 = load %struct.socket*, %struct.socket** %6, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  %38 = call i32 @SOCKBUF_LOCK(%struct.TYPE_5__* %37)
  %39 = load %struct.socket*, %struct.socket** %6, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %23
  %48 = load %struct.socket*, %struct.socket** %6, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %23
  %55 = load %struct.socket*, %struct.socket** %6, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = call i32 @SOCKBUF_UNLOCK(%struct.TYPE_5__* %56)
  %58 = load i32, i32* @tcps_mturesent, align 4
  %59 = call i32 @TCPSTAT_INC(i32 %58)
  %60 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %61 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %60, i32 0, i32 7
  store i64 0, i64* %61, align 8
  %62 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %63 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %66 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %68 = call i32 @tcp_free_sackholes(%struct.tcpcb* %67)
  %69 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %70 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %73 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %75 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @TF_SACK_PERMIT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %54
  %81 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %82 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @EXIT_FASTRECOVERY(i32 %83)
  br label %85

85:                                               ; preds = %80, %54
  %86 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %87 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %89, align 8
  %91 = load %struct.tcpcb*, %struct.tcpcb** %5, align 8
  %92 = call i32 %90(%struct.tcpcb* %91)
  br label %93

93:                                               ; preds = %85, %22
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @tcp_mss_update(%struct.tcpcb*, i32, i32, i32*, i32*) #1

declare dso_local i32 @SOCKBUF_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @TCPSTAT_INC(i32) #1

declare dso_local i32 @tcp_free_sackholes(%struct.tcpcb*) #1

declare dso_local i32 @EXIT_FASTRECOVERY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
