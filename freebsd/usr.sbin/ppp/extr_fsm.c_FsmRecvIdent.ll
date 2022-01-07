; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvIdent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_fsm.c_FsmRecvIdent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsm = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.fsmheader = type { i32 }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"%s: RecvIdent: magic 0x%08lx is wrong, expecting 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsm*, %struct.fsmheader*, %struct.mbuf*)* @FsmRecvIdent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FsmRecvIdent(%struct.fsm* %0, %struct.fsmheader* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.fsm*, align 8
  %5 = alloca %struct.fsmheader*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.fsm* %0, %struct.fsm** %4, align 8
  store %struct.fsmheader* %1, %struct.fsmheader** %5, align 8
  store %struct.mbuf* %2, %struct.mbuf** %6, align 8
  %10 = load %struct.fsmheader*, %struct.fsmheader** %5, align 8
  %11 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ntohs(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 4
  br i1 %18, label %19, label %66

19:                                               ; preds = %3
  %20 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %21 = call i32 @m_append(%struct.mbuf* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %22 = call %struct.mbuf* @m_pullup(i32 %21)
  store %struct.mbuf* %22, %struct.mbuf** %6, align 8
  %23 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %24 = call i8* @MBUF_CTOP(%struct.mbuf* %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @ua_ntohl(i8* %25, i64* %7)
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.fsm*, %struct.fsm** %4, align 8
  %29 = getelementptr inbounds %struct.fsm, %struct.fsm* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %27, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %19
  %36 = load %struct.fsm*, %struct.fsm** %4, align 8
  %37 = getelementptr inbounds %struct.fsm, %struct.fsm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fsm*, %struct.fsm** %4, align 8
  %40 = getelementptr inbounds %struct.fsm, %struct.fsm* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.fsm*, %struct.fsm** %4, align 8
  %47 = getelementptr inbounds %struct.fsm, %struct.fsm* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @log_Printf(i32 %38, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %35, %19
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 0, i8* %58, align 1
  %59 = load %struct.fsm*, %struct.fsm** %4, align 8
  %60 = getelementptr inbounds %struct.fsm, %struct.fsm* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = call i32 @lcp_RecvIdentification(%struct.TYPE_4__* %62, i8* %64)
  br label %66

66:                                               ; preds = %54, %3
  %67 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %68 = call i32 @m_freem(%struct.mbuf* %67)
  ret void
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.mbuf* @m_pullup(i32) #1

declare dso_local i32 @m_append(%struct.mbuf*, i8*, i32) #1

declare dso_local i8* @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @ua_ntohl(i8*, i64*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lcp_RecvIdentification(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
