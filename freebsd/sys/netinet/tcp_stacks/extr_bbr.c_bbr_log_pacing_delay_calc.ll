; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_pacing_delay_calc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_pacing_delay_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%union.tcp_log_stackspecific = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_HPTSI_CALC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i8*, i8*, i8*, i32, i8*, i32)* @bbr_log_pacing_delay_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_pacing_delay_calc(%struct.tcp_bbr* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.tcp_bbr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %19 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %8
  %26 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %27 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %28 = load i8*, i8** %12, align 8
  %29 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %26, %struct.TYPE_7__* %27, i8* %28)
  %30 = load i8*, i8** %13, align 8
  %31 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 7
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 6
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %14, align 4
  %37 = ashr i32 %36, 32
  %38 = zext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %14, align 4
  %43 = zext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %25
  %50 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 4, i32* %51, align 8
  br label %55

52:                                               ; preds = %25
  %53 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** %15, align 8
  %57 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %16, align 4
  %63 = bitcast %union.tcp_log_stackspecific* %17 to %struct.TYPE_7__*
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %66 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %69 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %75 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* @BBR_LOG_HPTSI_CALC, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %83 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %82, i32 0, i32 0
  %84 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_8__* %67, i32* null, i32* %73, i32* %79, i32 %80, i32 0, i8* %81, %union.tcp_log_stackspecific* %17, i32 0, i32* %83)
  br label %85

85:                                               ; preds = %55, %8
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_8__*, i32*, i32*, i32*, i32, i32, i8*, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
