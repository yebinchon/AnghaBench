; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvConfigRej.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvConfigRej.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 (i32, %struct.fsm*)* }
%struct.TYPE_5__ = type { i32 (%struct.fsm*)*, i32 (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)*, i32 (%struct.fsm*, i32)* }
%struct.fsm_decode = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fsmheader = type { i32, i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s: Oops, RCJ in %s.\0A\00", align 1
@MODE_REJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"  [EMPTY]\0A\00", align 1
@FSM_REQ_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, %struct.fsmheader*, %struct.mbuf*)* @FsmRecvConfigRej to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmRecvConfigRej(%struct.fsm* %0, %struct.fsmheader* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.fsmheader*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.fsm_decode, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.fsm* %0, %struct.fsm** %4, align 8
  store %struct.fsmheader* %1, %struct.fsmheader** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = call i64 @m_length(%struct.mbuf* %11)
  store i64 %12, i64* %8, align 8
  %13 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %14 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* %8, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %26 = call i32 @m_freem(%struct.mbuf* %25)
  br label %144

27:                                               ; preds = %3
  %28 = load %struct.fsm*, %struct.fsm** %4, align 8
  %29 = getelementptr inbounds %struct.fsm, %struct.fsm* %28, i32 0, i32 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @lcp_SendIdentification(i32* %31)
  %33 = load %struct.fsm*, %struct.fsm** %4, align 8
  %34 = getelementptr inbounds %struct.fsm, %struct.fsm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %68 [
    i32 133, label %36
    i32 130, label %36
    i32 135, label %52
    i32 129, label %52
    i32 134, label %65
    i32 128, label %65
  ]

36:                                               ; preds = %27, %27
  %37 = load %struct.fsm*, %struct.fsm** %4, align 8
  %38 = getelementptr inbounds %struct.fsm, %struct.fsm* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.fsm*, %struct.fsm** %4, align 8
  %41 = getelementptr inbounds %struct.fsm, %struct.fsm* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fsm*, %struct.fsm** %4, align 8
  %46 = getelementptr inbounds %struct.fsm, %struct.fsm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @State2Nam(i32 %47)
  %49 = call i32 (i32, i8*, ...) @log_Printf(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48)
  %50 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %51 = call i32 @m_freem(%struct.mbuf* %50)
  br label %144

52:                                               ; preds = %27, %27
  %53 = load %struct.fsm*, %struct.fsm** %4, align 8
  %54 = getelementptr inbounds %struct.fsm, %struct.fsm* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i32 (%struct.fsm*, i32)*, i32 (%struct.fsm*, i32)** %56, align 8
  %58 = load %struct.fsm*, %struct.fsm** %4, align 8
  %59 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %60 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 %57(%struct.fsm* %58, i32 %61)
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = call i32 @m_freem(%struct.mbuf* %63)
  br label %144

65:                                               ; preds = %27, %27
  %66 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %67 = call i32 @m_freem(%struct.mbuf* %66)
  br label %144

68:                                               ; preds = %27
  %69 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %70 = call %struct.mbuf* @m_pullup(%struct.mbuf* %69)
  store %struct.mbuf* %70, %struct.mbuf** %6, align 8
  %71 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 5
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %81 = call i32* @MBUF_CTOP(%struct.mbuf* %80)
  store i32* %81, i32** %10, align 8
  %82 = load %struct.fsm*, %struct.fsm** %4, align 8
  %83 = getelementptr inbounds %struct.fsm, %struct.fsm* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32 (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)*, i32 (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)** %85, align 8
  %87 = load %struct.fsm*, %struct.fsm** %4, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* @MODE_REJ, align 4
  %94 = call i32 %86(%struct.fsm* %87, i32* %88, i32* %92, i32 %93, %struct.fsm_decode* %7)
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %102

97:                                               ; preds = %68
  %98 = load %struct.fsm*, %struct.fsm** %4, align 8
  %99 = getelementptr inbounds %struct.fsm, %struct.fsm* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i32 (i32, i8*, ...) @log_Printf(i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %68
  %103 = load %struct.fsm*, %struct.fsm** %4, align 8
  %104 = getelementptr inbounds %struct.fsm, %struct.fsm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %141 [
    i32 131, label %106
    i32 136, label %106
    i32 132, label %112
    i32 137, label %136
  ]

106:                                              ; preds = %102, %102
  %107 = load %struct.fsm*, %struct.fsm** %4, align 8
  %108 = load i32, i32* @FSM_REQ_TIMER, align 4
  %109 = call i32 @FsmInitRestartCounter(%struct.fsm* %107, i32 %108)
  %110 = load %struct.fsm*, %struct.fsm** %4, align 8
  %111 = call i32 @FsmSendConfigReq(%struct.fsm* %110)
  br label %141

112:                                              ; preds = %102
  %113 = load %struct.fsm*, %struct.fsm** %4, align 8
  %114 = getelementptr inbounds %struct.fsm, %struct.fsm* %113, i32 0, i32 2
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %116, align 8
  %118 = load %struct.fsm*, %struct.fsm** %4, align 8
  %119 = call i32 %117(%struct.fsm* %118)
  %120 = load %struct.fsm*, %struct.fsm** %4, align 8
  %121 = call i32 @FsmSendConfigReq(%struct.fsm* %120)
  %122 = load %struct.fsm*, %struct.fsm** %4, align 8
  %123 = call i32 @NewState(%struct.fsm* %122, i32 131)
  %124 = load %struct.fsm*, %struct.fsm** %4, align 8
  %125 = getelementptr inbounds %struct.fsm, %struct.fsm* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %127, align 8
  %129 = load %struct.fsm*, %struct.fsm** %4, align 8
  %130 = getelementptr inbounds %struct.fsm, %struct.fsm* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.fsm*, %struct.fsm** %4, align 8
  %135 = call i32 %128(i32 %133, %struct.fsm* %134)
  br label %141

136:                                              ; preds = %102
  %137 = load %struct.fsm*, %struct.fsm** %4, align 8
  %138 = call i32 @FsmSendConfigReq(%struct.fsm* %137)
  %139 = load %struct.fsm*, %struct.fsm** %4, align 8
  %140 = call i32 @NewState(%struct.fsm* %139, i32 131)
  br label %141

141:                                              ; preds = %102, %136, %112, %106
  %142 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %143 = call i32 @m_freem(%struct.mbuf* %142)
  br label %144

144:                                              ; preds = %141, %65, %52, %36, %24
  ret void
}

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @lcp_SendIdentification(i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @State2Nam(i32) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*) #1

declare dso_local i32* @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @FsmInitRestartCounter(%struct.fsm*, i32) #1

declare dso_local i32 @FsmSendConfigReq(%struct.fsm*) #1

declare dso_local i32 @NewState(%struct.fsm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
