; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvConfigAck.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvConfigAck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i32, i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)* }
%struct.TYPE_5__ = type { i32 (%struct.fsm*)*, i32 (%struct.fsm*)*, i32 (%struct.fsm*, i32)*, i32 (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)* }
%struct.fsm_decode = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fsmheader = type { i32, i32 }
%struct.mbuf = type { i32 }

@MODE_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"  [EMPTY]\0A\00", align 1
@FSM_REQ_TIMER = common dso_local global i32 0, align 4
@FSM_TRM_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, %struct.fsmheader*, %struct.mbuf*)* @FsmRecvConfigAck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmRecvConfigAck(%struct.fsm* %0, %struct.fsmheader* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.fsmheader*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.fsm_decode, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.fsm* %0, %struct.fsm** %4, align 8
  store %struct.fsmheader* %1, %struct.fsmheader** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = call i32 @m_length(%struct.mbuf* %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %14 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %25 = call i32 @m_freem(%struct.mbuf* %24)
  br label %162

26:                                               ; preds = %3
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = call %struct.mbuf* @m_pullup(%struct.mbuf* %27)
  store %struct.mbuf* %28, %struct.mbuf** %6, align 8
  %29 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 5
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = call i32* @MBUF_CTOP(%struct.mbuf* %38)
  store i32* %39, i32** %10, align 8
  %40 = load %struct.fsm*, %struct.fsm** %4, align 8
  %41 = getelementptr inbounds %struct.fsm, %struct.fsm* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32 (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)*, i32 (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)** %43, align 8
  %45 = load %struct.fsm*, %struct.fsm** %4, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* @MODE_ACK, align 4
  %52 = call i32 %44(%struct.fsm* %45, i32* %46, i32* %50, i32 %51, %struct.fsm_decode* %7)
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %60

55:                                               ; preds = %26
  %56 = load %struct.fsm*, %struct.fsm** %4, align 8
  %57 = getelementptr inbounds %struct.fsm, %struct.fsm* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @log_Printf(i32 %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %26
  %61 = load %struct.fsm*, %struct.fsm** %4, align 8
  %62 = getelementptr inbounds %struct.fsm, %struct.fsm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %159 [
    i32 133, label %64
    i32 129, label %64
    i32 132, label %75
    i32 128, label %75
    i32 130, label %76
    i32 135, label %82
    i32 134, label %87
    i32 131, label %135
  ]

64:                                               ; preds = %60, %60
  %65 = load %struct.fsm*, %struct.fsm** %4, align 8
  %66 = getelementptr inbounds %struct.fsm, %struct.fsm* %65, i32 0, i32 2
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32 (%struct.fsm*, i32)*, i32 (%struct.fsm*, i32)** %68, align 8
  %70 = load %struct.fsm*, %struct.fsm** %4, align 8
  %71 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %72 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 %69(%struct.fsm* %70, i32 %73)
  br label %159

75:                                               ; preds = %60, %60
  br label %159

76:                                               ; preds = %60
  %77 = load %struct.fsm*, %struct.fsm** %4, align 8
  %78 = load i32, i32* @FSM_REQ_TIMER, align 4
  %79 = call i32 @FsmInitRestartCounter(%struct.fsm* %77, i32 %78)
  %80 = load %struct.fsm*, %struct.fsm** %4, align 8
  %81 = call i32 @NewState(%struct.fsm* %80, i32 135)
  br label %159

82:                                               ; preds = %60
  %83 = load %struct.fsm*, %struct.fsm** %4, align 8
  %84 = call i32 @FsmSendConfigReq(%struct.fsm* %83)
  %85 = load %struct.fsm*, %struct.fsm** %4, align 8
  %86 = call i32 @NewState(%struct.fsm* %85, i32 130)
  br label %159

87:                                               ; preds = %60
  %88 = load %struct.fsm*, %struct.fsm** %4, align 8
  %89 = load i32, i32* @FSM_REQ_TIMER, align 4
  %90 = call i32 @FsmInitRestartCounter(%struct.fsm* %88, i32 %89)
  %91 = load %struct.fsm*, %struct.fsm** %4, align 8
  %92 = call i32 @NewState(%struct.fsm* %91, i32 131)
  %93 = load %struct.fsm*, %struct.fsm** %4, align 8
  %94 = getelementptr inbounds %struct.fsm, %struct.fsm* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %96, align 8
  %98 = load %struct.fsm*, %struct.fsm** %4, align 8
  %99 = call i32 %97(%struct.fsm* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %87
  %102 = load %struct.fsm*, %struct.fsm** %4, align 8
  %103 = getelementptr inbounds %struct.fsm, %struct.fsm* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %105, align 8
  %107 = load %struct.fsm*, %struct.fsm** %4, align 8
  %108 = getelementptr inbounds %struct.fsm, %struct.fsm* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.fsm*, %struct.fsm** %4, align 8
  %113 = call i32 %106(i32 %111, %struct.fsm* %112)
  br label %134

114:                                              ; preds = %87
  %115 = load %struct.fsm*, %struct.fsm** %4, align 8
  %116 = getelementptr inbounds %struct.fsm, %struct.fsm* %115, i32 0, i32 2
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %118, align 8
  %120 = load %struct.fsm*, %struct.fsm** %4, align 8
  %121 = call i32 %119(%struct.fsm* %120)
  %122 = load %struct.fsm*, %struct.fsm** %4, align 8
  %123 = load i32, i32* @FSM_TRM_TIMER, align 4
  %124 = call i32 @FsmInitRestartCounter(%struct.fsm* %122, i32 %123)
  %125 = load %struct.fsm*, %struct.fsm** %4, align 8
  %126 = call i32 @FsmSendTerminateReq(%struct.fsm* %125)
  %127 = load %struct.fsm*, %struct.fsm** %4, align 8
  %128 = call i32 @NewState(%struct.fsm* %127, i32 132)
  %129 = load %struct.fsm*, %struct.fsm** %4, align 8
  %130 = getelementptr inbounds %struct.fsm, %struct.fsm* %129, i32 0, i32 3
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = call i32 @lcp_SendIdentification(i32* %132)
  br label %134

134:                                              ; preds = %114, %101
  br label %159

135:                                              ; preds = %60
  %136 = load %struct.fsm*, %struct.fsm** %4, align 8
  %137 = getelementptr inbounds %struct.fsm, %struct.fsm* %136, i32 0, i32 2
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %139, align 8
  %141 = load %struct.fsm*, %struct.fsm** %4, align 8
  %142 = call i32 %140(%struct.fsm* %141)
  %143 = load %struct.fsm*, %struct.fsm** %4, align 8
  %144 = call i32 @FsmSendConfigReq(%struct.fsm* %143)
  %145 = load %struct.fsm*, %struct.fsm** %4, align 8
  %146 = call i32 @NewState(%struct.fsm* %145, i32 130)
  %147 = load %struct.fsm*, %struct.fsm** %4, align 8
  %148 = getelementptr inbounds %struct.fsm, %struct.fsm* %147, i32 0, i32 1
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %150, align 8
  %152 = load %struct.fsm*, %struct.fsm** %4, align 8
  %153 = getelementptr inbounds %struct.fsm, %struct.fsm* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.fsm*, %struct.fsm** %4, align 8
  %158 = call i32 %151(i32 %156, %struct.fsm* %157)
  br label %159

159:                                              ; preds = %60, %135, %134, %82, %76, %75, %64
  %160 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %161 = call i32 @m_freem(%struct.mbuf* %160)
  br label %162

162:                                              ; preds = %159, %23
  ret void
}

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*) #1

declare dso_local i32* @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @FsmInitRestartCounter(%struct.fsm*, i32) #1

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

declare dso_local i32 @FsmSendConfigReq(%struct.fsm*) #1

declare dso_local i32 @FsmSendTerminateReq(%struct.fsm*) #1

declare dso_local i32 @lcp_SendIdentification(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
