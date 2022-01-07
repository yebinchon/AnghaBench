; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvConfigNak.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvConfigNak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 (i32, %struct.fsm*)* }
%struct.TYPE_5__ = type { i32 (%struct.fsm*)*, i32 (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)*, i32 (%struct.fsm*, i32)* }
%struct.fsm_decode = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fsmheader = type { i32, i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s: Oops, RCN in %s.\0A\00", align 1
@MODE_NAK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"  [EMPTY]\0A\00", align 1
@FSM_REQ_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, %struct.fsmheader*, %struct.mbuf*)* @FsmRecvConfigNak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmRecvConfigNak(%struct.fsm* %0, %struct.fsmheader* %1, %struct.mbuf* %2) #0 {
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
  br label %138

26:                                               ; preds = %3
  %27 = load %struct.fsm*, %struct.fsm** %4, align 8
  %28 = getelementptr inbounds %struct.fsm, %struct.fsm* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %62 [
    i32 133, label %30
    i32 130, label %30
    i32 135, label %46
    i32 129, label %46
    i32 134, label %59
    i32 128, label %59
  ]

30:                                               ; preds = %26, %26
  %31 = load %struct.fsm*, %struct.fsm** %4, align 8
  %32 = getelementptr inbounds %struct.fsm, %struct.fsm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.fsm*, %struct.fsm** %4, align 8
  %35 = getelementptr inbounds %struct.fsm, %struct.fsm* %34, i32 0, i32 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fsm*, %struct.fsm** %4, align 8
  %40 = getelementptr inbounds %struct.fsm, %struct.fsm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @State2Nam(i32 %41)
  %43 = call i32 (i32, i8*, ...) @log_Printf(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = call i32 @m_freem(%struct.mbuf* %44)
  br label %138

46:                                               ; preds = %26, %26
  %47 = load %struct.fsm*, %struct.fsm** %4, align 8
  %48 = getelementptr inbounds %struct.fsm, %struct.fsm* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32 (%struct.fsm*, i32)*, i32 (%struct.fsm*, i32)** %50, align 8
  %52 = load %struct.fsm*, %struct.fsm** %4, align 8
  %53 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %54 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %51(%struct.fsm* %52, i32 %55)
  %57 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %58 = call i32 @m_freem(%struct.mbuf* %57)
  br label %138

59:                                               ; preds = %26, %26
  %60 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %61 = call i32 @m_freem(%struct.mbuf* %60)
  br label %138

62:                                               ; preds = %26
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = call %struct.mbuf* @m_pullup(%struct.mbuf* %63)
  store %struct.mbuf* %64, %struct.mbuf** %6, align 8
  %65 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 5
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.fsm_decode, %struct.fsm_decode* %7, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = call i32* @MBUF_CTOP(%struct.mbuf* %74)
  store i32* %75, i32** %10, align 8
  %76 = load %struct.fsm*, %struct.fsm** %4, align 8
  %77 = getelementptr inbounds %struct.fsm, %struct.fsm* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32 (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)*, i32 (%struct.fsm*, i32*, i32*, i32, %struct.fsm_decode*)** %79, align 8
  %81 = load %struct.fsm*, %struct.fsm** %4, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* @MODE_NAK, align 4
  %88 = call i32 %80(%struct.fsm* %81, i32* %82, i32* %86, i32 %87, %struct.fsm_decode* %7)
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %96

91:                                               ; preds = %62
  %92 = load %struct.fsm*, %struct.fsm** %4, align 8
  %93 = getelementptr inbounds %struct.fsm, %struct.fsm* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @log_Printf(i32 %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %62
  %97 = load %struct.fsm*, %struct.fsm** %4, align 8
  %98 = getelementptr inbounds %struct.fsm, %struct.fsm* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %135 [
    i32 131, label %100
    i32 136, label %100
    i32 132, label %106
    i32 137, label %130
  ]

100:                                              ; preds = %96, %96
  %101 = load %struct.fsm*, %struct.fsm** %4, align 8
  %102 = load i32, i32* @FSM_REQ_TIMER, align 4
  %103 = call i32 @FsmInitRestartCounter(%struct.fsm* %101, i32 %102)
  %104 = load %struct.fsm*, %struct.fsm** %4, align 8
  %105 = call i32 @FsmSendConfigReq(%struct.fsm* %104)
  br label %135

106:                                              ; preds = %96
  %107 = load %struct.fsm*, %struct.fsm** %4, align 8
  %108 = getelementptr inbounds %struct.fsm, %struct.fsm* %107, i32 0, i32 2
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32 (%struct.fsm*)*, i32 (%struct.fsm*)** %110, align 8
  %112 = load %struct.fsm*, %struct.fsm** %4, align 8
  %113 = call i32 %111(%struct.fsm* %112)
  %114 = load %struct.fsm*, %struct.fsm** %4, align 8
  %115 = call i32 @FsmSendConfigReq(%struct.fsm* %114)
  %116 = load %struct.fsm*, %struct.fsm** %4, align 8
  %117 = call i32 @NewState(%struct.fsm* %116, i32 131)
  %118 = load %struct.fsm*, %struct.fsm** %4, align 8
  %119 = getelementptr inbounds %struct.fsm, %struct.fsm* %118, i32 0, i32 1
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32 (i32, %struct.fsm*)*, i32 (i32, %struct.fsm*)** %121, align 8
  %123 = load %struct.fsm*, %struct.fsm** %4, align 8
  %124 = getelementptr inbounds %struct.fsm, %struct.fsm* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.fsm*, %struct.fsm** %4, align 8
  %129 = call i32 %122(i32 %127, %struct.fsm* %128)
  br label %135

130:                                              ; preds = %96
  %131 = load %struct.fsm*, %struct.fsm** %4, align 8
  %132 = call i32 @FsmSendConfigReq(%struct.fsm* %131)
  %133 = load %struct.fsm*, %struct.fsm** %4, align 8
  %134 = call i32 @NewState(%struct.fsm* %133, i32 131)
  br label %135

135:                                              ; preds = %96, %130, %106, %100
  %136 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %137 = call i32 @m_freem(%struct.mbuf* %136)
  br label %138

138:                                              ; preds = %135, %59, %46, %30, %23
  ret void
}

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

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
