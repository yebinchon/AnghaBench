; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_to_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_to_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i8*, i8*, i32, i64, i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_RTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i8*, i32)* @bbr_log_to_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_to_event(%struct.tcp_bbr* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_bbr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.tcp_log_stackspecific, align 8
  %8 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %9, i32 0, i32 2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %88

16:                                               ; preds = %3
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %18 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %17, %struct.TYPE_9__* %18, i8* %19)
  %21 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %22 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %29 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %35 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %48 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %59 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @TICKS_2_USEC(i32 %62)
  %64 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = bitcast %union.tcp_log_stackspecific* %7 to %struct.TYPE_9__*
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %70 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %73 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %79 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* @BBR_LOG_RTO, align 4
  %85 = load %struct.tcp_bbr*, %struct.tcp_bbr** %4, align 8
  %86 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %85, i32 0, i32 0
  %87 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %71, i32* null, i32* %77, i32* %83, i32 %84, i32 0, i32 0, %union.tcp_log_stackspecific* %7, i32 0, i32* %86)
  br label %88

88:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @TICKS_2_USEC(i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
