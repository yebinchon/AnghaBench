; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_ChapOutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chap.c_ChapOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fsmheader = type { i64, i64, i32 }
%struct.mbuf = type { i32 }

@MB_CHAPOUT = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ChapOutput\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Chap Output: %s\0A\00", align 1
@chapcodes = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Chap Output: %s (%s)\0A\00", align 1
@PROTO_CHAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.physical*, i64, i64, %struct.fsmheader*, i32, i8*)* @ChapOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ChapOutput(%struct.physical* %0, i64 %1, i64 %2, %struct.fsmheader* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.physical*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fsmheader*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fsmheader, align 8
  %15 = alloca %struct.mbuf*, align 8
  store %struct.physical* %0, %struct.physical** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.fsmheader* %3, %struct.fsmheader** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 24, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %14, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %14, i32 0, i32 1
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = getelementptr inbounds %struct.fsmheader, %struct.fsmheader* %14, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* @MB_CHAPOUT, align 4
  %29 = call %struct.mbuf* @m_get(i32 %27, i32 %28)
  store %struct.mbuf* %29, %struct.mbuf** %15, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %31 = call i64 @MBUF_CTOP(%struct.mbuf* %30)
  %32 = call i32 @memcpy(i64 %31, %struct.fsmheader* %14, i32 24)
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %6
  %36 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %37 = call i64 @MBUF_CTOP(%struct.mbuf* %36)
  %38 = add i64 %37, 24
  %39 = load %struct.fsmheader*, %struct.fsmheader** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @memcpy(i64 %38, %struct.fsmheader* %39, i32 %40)
  br label %42

42:                                               ; preds = %35, %6
  %43 = load i32, i32* @LogDEBUG, align 4
  %44 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %45 = call i32 @log_DumpBp(i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.mbuf* %44)
  %46 = load i8*, i8** %12, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* @LogPHASE, align 4
  %50 = load i32*, i32** @chapcodes, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %63

55:                                               ; preds = %42
  %56 = load i32, i32* @LogPHASE, align 4
  %57 = load i32*, i32** @chapcodes, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %61)
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.physical*, %struct.physical** %7, align 8
  %65 = getelementptr inbounds %struct.physical, %struct.physical* %64, i32 0, i32 0
  %66 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %67 = load %struct.physical*, %struct.physical** %7, align 8
  %68 = getelementptr inbounds %struct.physical, %struct.physical* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.physical*, %struct.physical** %7, align 8
  %73 = getelementptr inbounds %struct.physical, %struct.physical* %72, i32 0, i32 0
  %74 = call i64 @LINK_QUEUES(i32* %73)
  %75 = sub nsw i64 %74, 1
  %76 = load i32, i32* @PROTO_CHAP, align 4
  %77 = call i32 @link_PushPacket(i32* %65, %struct.mbuf* %66, i32 %71, i64 %75, i32 %76)
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @memcpy(i64, %struct.fsmheader*, i32) #1

declare dso_local i64 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @log_DumpBp(i32, i8*, %struct.mbuf*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local i32 @link_PushPacket(i32*, %struct.mbuf*, i32, i64, i32) #1

declare dso_local i64 @LINK_QUEUES(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
