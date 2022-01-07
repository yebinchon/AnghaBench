; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvEchoReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvEchoReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.fsmheader = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.lcp = type { i64, i32 }

@MB_ECHOIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%s: RecvEchoReq: magic 0x%08lx is wrong, expecting 0x%08lx\0A\00", align 1
@ST_OPENED = common dso_local global i64 0, align 8
@CODE_ECHOREP = common dso_local global i32 0, align 4
@MB_ECHOOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, %struct.fsmheader*, %struct.mbuf*)* @FsmRecvEchoReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmRecvEchoReq(%struct.fsm* %0, %struct.fsmheader* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.fsmheader*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.lcp*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.fsm* %0, %struct.fsm** %4, align 8
  store %struct.fsmheader* %1, %struct.fsmheader** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %10 = load %struct.fsm*, %struct.fsm** %4, align 8
  %11 = call %struct.lcp* @fsm2lcp(%struct.fsm* %10)
  store %struct.lcp* %11, %struct.lcp** %7, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %13 = call %struct.mbuf* @m_pullup(%struct.mbuf* %12)
  store %struct.mbuf* %13, %struct.mbuf** %6, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = load i32, i32* @MB_ECHOIN, align 4
  %16 = call i32 @m_settype(%struct.mbuf* %14, i32 %15)
  %17 = load %struct.lcp*, %struct.lcp** %7, align 8
  %18 = icmp ne %struct.lcp* %17, null
  br i1 %18, label %19, label %80

19:                                               ; preds = %3
  %20 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %21 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohs(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 8
  %26 = icmp uge i64 %25, 4
  br i1 %26, label %27, label %80

27:                                               ; preds = %19
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %29 = call i32* @MBUF_CTOP(%struct.mbuf* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @ua_ntohl(i32* %30, i64* %9)
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.lcp*, %struct.lcp** %7, align 8
  %34 = getelementptr inbounds %struct.lcp, %struct.lcp* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %27
  %38 = load %struct.fsm*, %struct.fsm** %4, align 8
  %39 = getelementptr inbounds %struct.fsm, %struct.fsm* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fsm*, %struct.fsm** %4, align 8
  %42 = getelementptr inbounds %struct.fsm, %struct.fsm* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.lcp*, %struct.lcp** %7, align 8
  %49 = getelementptr inbounds %struct.lcp, %struct.lcp* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @log_Printf(i32 %40, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, i32 %51)
  br label %53

53:                                               ; preds = %37, %27
  %54 = load %struct.fsm*, %struct.fsm** %4, align 8
  %55 = getelementptr inbounds %struct.fsm, %struct.fsm* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ST_OPENED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.lcp*, %struct.lcp** %7, align 8
  %61 = getelementptr inbounds %struct.lcp, %struct.lcp* %60, i32 0, i32 1
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @ua_htonl(i32* %61, i32* %62)
  %64 = load %struct.fsm*, %struct.fsm** %4, align 8
  %65 = load i32, i32* @CODE_ECHOREP, align 4
  %66 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %67 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %71 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohs(i32 %72)
  %74 = sext i32 %73 to i64
  %75 = sub i64 %74, 8
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* @MB_ECHOOUT, align 4
  %78 = call i32 @fsm_Output(%struct.fsm* %64, i32 %65, i32 %68, i32* %69, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %59, %53
  br label %80

80:                                               ; preds = %79, %19, %3
  %81 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %82 = call i32 @m_freem(%struct.mbuf* %81)
  ret void
}

declare dso_local %struct.lcp* @fsm2lcp(%struct.fsm*) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*) #1

declare dso_local i32 @m_settype(%struct.mbuf*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32* @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @ua_ntohl(i32*, i64*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ua_htonl(i32*, i32*) #1

declare dso_local i32 @fsm_Output(%struct.fsm*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
