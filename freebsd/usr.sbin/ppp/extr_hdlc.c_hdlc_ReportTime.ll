; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_hdlc_ReportTime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_hdlc.c_hdlc_ReportTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdlc = type { i32, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s: HDLC errors -> FCS: %u, ADDR: %u, COMD: %u, PROTO: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hdlc_ReportTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdlc_ReportTime(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hdlc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.hdlc*
  store %struct.hdlc* %5, %struct.hdlc** %3, align 8
  %6 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %7 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %6, i32 0, i32 0
  %8 = call i32 @timer_Stop(i32* %7)
  %9 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %10 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %9, i32 0, i32 2
  %11 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %12 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %11, i32 0, i32 1
  %13 = call i64 @memcmp(%struct.TYPE_11__* %10, %struct.TYPE_11__* %12, i32 32)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %1
  %16 = load i32, i32* @LogPHASE, align 4
  %17 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %18 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %27 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %31 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %29, %33
  %35 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %36 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %40 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %38, %42
  %44 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %45 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %49 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %47, %51
  %53 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %54 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %58 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %56, %60
  %62 = call i32 @log_Printf(i32 %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %25, i64 %34, i64 %43, i64 %52, i64 %61)
  %63 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %64 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %63, i32 0, i32 2
  %65 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %66 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %65, i32 0, i32 1
  %67 = bitcast %struct.TYPE_11__* %64 to i8*
  %68 = bitcast %struct.TYPE_11__* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 32, i1 false)
  br label %69

69:                                               ; preds = %15, %1
  %70 = load %struct.hdlc*, %struct.hdlc** %3, align 8
  %71 = getelementptr inbounds %struct.hdlc, %struct.hdlc* %70, i32 0, i32 0
  %72 = call i32 @timer_Start(i32* %71)
  ret void
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i64 @memcmp(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timer_Start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
