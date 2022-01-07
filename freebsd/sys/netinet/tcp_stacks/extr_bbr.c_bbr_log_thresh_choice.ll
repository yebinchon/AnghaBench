; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_thresh_choice.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_thresh_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.bbr_sendmap = type { i32, i32* }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i8*, i32, i32, i32, i8*, i8* }

@bbr_verbose_logging = common dso_local global i64 0, align 8
@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_THRESH_CALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i8*, i8*, i8*, i8*, %struct.bbr_sendmap*, i32)* @bbr_log_thresh_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_thresh_choice(%struct.tcp_bbr* %0, i8* %1, i8* %2, i8* %3, i8* %4, %struct.bbr_sendmap* %5, i32 %6) #0 {
  %8 = alloca %struct.tcp_bbr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.bbr_sendmap*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.bbr_sendmap* %5, %struct.bbr_sendmap** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i64, i64* @bbr_verbose_logging, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %94

18:                                               ; preds = %7
  %19 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %20 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %19, i32 0, i32 2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %94

26:                                               ; preds = %18
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %28 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %27, %struct.TYPE_9__* %28, i8* %29)
  %31 = load i8*, i8** %10, align 8
  %32 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 6
  store i8* %34, i8** %36, align 8
  %37 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %38 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %13, align 8
  %44 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %13, align 8
  %47 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %56 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @TICKS_2_USEC(i32 %59)
  %61 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %67 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %14, align 4
  %73 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %76 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %75, i32 0, i32 2
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %79 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %85 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* @BBR_LOG_THRESH_CALC, align 4
  %91 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %92 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %91, i32 0, i32 0
  %93 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %77, i32* null, i32* %83, i32* %89, i32 %90, i32 0, i32 0, %union.tcp_log_stackspecific* %15, i32 0, i32* %92)
  br label %94

94:                                               ; preds = %26, %18, %7
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
