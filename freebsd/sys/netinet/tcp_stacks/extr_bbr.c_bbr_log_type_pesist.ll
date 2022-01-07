; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_pesist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_pesist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%union.tcp_log_stackspecific = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@bbr_verbose_logging = common dso_local global i64 0, align 8
@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_PERSIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i32, i32, i32)* @bbr_log_type_pesist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_type_pesist(%struct.tcp_bbr* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.tcp_log_stackspecific, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i64, i64* @bbr_verbose_logging, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %55

14:                                               ; preds = %5
  %15 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %16 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %14
  %23 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %24 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %23, %struct.TYPE_7__* %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %37 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %40 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %46 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* @BBR_LOG_PERSIST, align 4
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 0
  %54 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_8__* %38, i32* null, i32* %44, i32* %50, i32 %51, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, i32* %53)
  br label %55

55:                                               ; preds = %22, %14, %5
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_8__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
