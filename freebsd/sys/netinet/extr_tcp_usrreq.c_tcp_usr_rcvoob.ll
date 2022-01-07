; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_rcvoob.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_rcvoob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i32, i32 }

@TCPDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tcp_usr_rcvoob: inp == NULL\00", align 1
@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@SBS_RCVATMARK = common dso_local global i32 0, align 4
@SO_OOBINLINE = common dso_local global i32 0, align 4
@TCPOOB_HADDATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCPOOB_HAVEDATA = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@caddr_t = common dso_local global i32 0, align 4
@MSG_PEEK = common dso_local global i32 0, align 4
@PRU_RCVOOB = common dso_local global i32 0, align 4
@debug__user = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, i32)* @tcp_usr_rcvoob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_rcvoob(%struct.socket* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.tcpcb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.tcpcb* null, %struct.tcpcb** %9, align 8
  %10 = load i32, i32* @TCPDEBUG0, align 4
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %8, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %14 = icmp ne %struct.inpcb* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %18 = call i32 @INP_WLOCK(%struct.inpcb* %17)
  %19 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @INP_TIMEWAIT, align 4
  %23 = load i32, i32* @INP_DROPPED, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ECONNRESET, align 4
  store i32 %28, i32* %7, align 4
  br label %92

29:                                               ; preds = %3
  %30 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %31 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %30)
  store %struct.tcpcb* %31, %struct.tcpcb** %9, align 8
  %32 = call i32 (...) @TCPDEBUG1()
  %33 = load %struct.socket*, %struct.socket** %4, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.socket*, %struct.socket** %4, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SBS_RCVATMARK, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %37, %29
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SO_OOBINLINE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %54 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TCPOOB_HADDATA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52, %45, %37
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %7, align 4
  br label %92

61:                                               ; preds = %52
  %62 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %63 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @TCPOOB_HAVEDATA, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %69, i32* %7, align 4
  br label %92

70:                                               ; preds = %61
  %71 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %72 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  %73 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %74 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %77 = load i32, i32* @caddr_t, align 4
  %78 = call i32* @mtod(%struct.mbuf* %76, i32 %77)
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MSG_PEEK, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %70
  %84 = load i32, i32* @TCPOOB_HAVEDATA, align 4
  %85 = load i32, i32* @TCPOOB_HADDATA, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %88 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = xor i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %83, %70
  br label %92

92:                                               ; preds = %91, %68, %59, %27
  %93 = load i32, i32* @PRU_RCVOOB, align 4
  %94 = call i32 @TCPDEBUG2(i32 %93)
  %95 = load i32, i32* @debug__user, align 4
  %96 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %97 = load i32, i32* @PRU_RCVOOB, align 4
  %98 = call i32 @TCP_PROBE2(i32 %95, %struct.tcpcb* %96, i32 %97)
  %99 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %100 = call i32 @INP_WUNLOCK(%struct.inpcb* %99)
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @TCPDEBUG1(...) #1

declare dso_local i32* @mtod(%struct.mbuf*, i32) #1

declare dso_local i32 @TCPDEBUG2(i32) #1

declare dso_local i32 @TCP_PROBE2(i32, %struct.tcpcb*, i32) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
