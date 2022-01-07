; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_timer_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_timer_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

@bbr_verbose_logging = common dso_local global i64 0, align 8
@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_TIMERPREP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i8*, i8*, i8*, i8*, i8*)* @bbr_log_timer_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_timer_var(%struct.tcp_bbr* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.tcp_bbr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load i64, i64* @bbr_verbose_logging, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %7
  %19 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %20 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %79

26:                                               ; preds = %18
  %27 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %28 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %27, %struct.TYPE_7__* %28, i8* %29)
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %51 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %50, i32 0, i32 2
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %61 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %70 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* @BBR_LOG_TIMERPREP, align 4
  %76 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %77 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %76, i32 0, i32 0
  %78 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_8__* %62, i32* null, i32* %68, i32* %74, i32 %75, i32 0, i32 0, %union.tcp_log_stackspecific* %15, i32 0, i32* %77)
  br label %79

79:                                               ; preds = %26, %18, %7
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_8__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
