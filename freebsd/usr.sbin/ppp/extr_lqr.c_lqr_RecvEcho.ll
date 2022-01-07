; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_RecvEcho.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_RecvEcho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mbuf = type { i32 }
%struct.hdlc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lcp = type { i64, i64 }
%struct.echolqr = type { i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.hdlc }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: lqr_RecvEcho: Bad magic: expected 0x%08x, got 0x%08x\0A\00", align 1
@SIGNATURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"lqr_RecvEcho: Got sig 0x%08lx, not 0x%08lx !\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"lqr_RecvEcho: Got packet size %zd, expecting %ld !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @lqr_RecvEcho(%struct.fsm* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.fsm*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.hdlc*, align 8
  %6 = alloca %struct.lcp*, align 8
  %7 = alloca %struct.echolqr, align 8
  store %struct.fsm* %0, %struct.fsm** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %8 = load %struct.fsm*, %struct.fsm** %3, align 8
  %9 = getelementptr inbounds %struct.fsm, %struct.fsm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = call %struct.TYPE_7__* @link2physical(%struct.TYPE_8__* %10)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.hdlc* %12, %struct.hdlc** %5, align 8
  %13 = load %struct.fsm*, %struct.fsm** %3, align 8
  %14 = call %struct.lcp* @fsm2lcp(%struct.fsm* %13)
  store %struct.lcp* %14, %struct.lcp** %6, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = call i64 @m_length(%struct.mbuf* %15)
  %17 = icmp uge i64 %16, 24
  br i1 %17, label %18, label %124

18:                                               ; preds = %2
  %19 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %20 = call i32 @mbuf_Read(%struct.mbuf* %19, %struct.echolqr* %7, i32 24)
  %21 = call i32 @m_freem(i32 %20)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  %22 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i8* @ntohl(i64 %23)
  %25 = ptrtoint i8* %24 to i64
  %26 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @ntohl(i64 %28)
  %30 = ptrtoint i8* %29 to i64
  %31 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i8* @ntohl(i64 %33)
  %35 = ptrtoint i8* %34 to i64
  %36 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.lcp*, %struct.lcp** %6, align 8
  %44 = getelementptr inbounds %struct.lcp, %struct.lcp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.lcp*, %struct.lcp** %6, align 8
  %51 = getelementptr inbounds %struct.lcp, %struct.lcp* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load i32, i32* @LogWARN, align 4
  %56 = load %struct.fsm*, %struct.fsm** %3, align 8
  %57 = getelementptr inbounds %struct.fsm, %struct.fsm* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.lcp*, %struct.lcp** %6, align 8
  %63 = getelementptr inbounds %struct.lcp, %struct.lcp* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i32, i8*, i64, i64, ...) @log_Printf(i32 %55, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %61, i64 %64, i64 %66)
  br label %68

68:                                               ; preds = %54, %47, %40, %18
  %69 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SIGNATURE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.lcp*, %struct.lcp** %6, align 8
  %77 = getelementptr inbounds %struct.lcp, %struct.lcp* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %117

80:                                               ; preds = %73, %68
  %81 = load %struct.hdlc*, %struct.hdlc** %5, align 8
  %82 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, -5
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %89, 5
  br i1 %90, label %108, label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.hdlc*, %struct.hdlc** %5, align 8
  %93 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %96, -5
  br i1 %97, label %98, label %116

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.hdlc*, %struct.hdlc** %5, align 8
  %102 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = icmp sgt i64 %100, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %98, %87
  %109 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = load %struct.hdlc*, %struct.hdlc** %5, align 8
  %113 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %98, %91
  br label %123

117:                                              ; preds = %73
  %118 = load i32, i32* @LogWARN, align 4
  %119 = getelementptr inbounds %struct.echolqr, %struct.echolqr* %7, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SIGNATURE, align 8
  %122 = call i32 (i32, i8*, i64, i64, ...) @log_Printf(i32 %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %120, i64 %121)
  br label %123

123:                                              ; preds = %117, %116
  br label %129

124:                                              ; preds = %2
  %125 = load i32, i32* @LogWARN, align 4
  %126 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %127 = call i64 @m_length(%struct.mbuf* %126)
  %128 = call i32 (i32, i8*, i64, i64, ...) @log_Printf(i32 %125, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %127, i64 24)
  br label %129

129:                                              ; preds = %124, %123
  %130 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %130
}

declare dso_local %struct.TYPE_7__* @link2physical(%struct.TYPE_8__*) #1

declare dso_local %struct.lcp* @fsm2lcp(%struct.fsm*) #1

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @mbuf_Read(%struct.mbuf*, %struct.echolqr*, i32) #1

declare dso_local i8* @ntohl(i64) #1

declare dso_local i32 @log_Printf(i32, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
