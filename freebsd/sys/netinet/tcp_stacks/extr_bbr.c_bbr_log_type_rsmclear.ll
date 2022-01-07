; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_rsmclear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_rsmclear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.bbr_sendmap = type { i32, i32*, i32, i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i8* }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_RSM_CLEARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i8*, %struct.bbr_sendmap*, i8*, i8*)* @bbr_log_type_rsmclear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_type_rsmclear(%struct.tcp_bbr* %0, i8* %1, %struct.bbr_sendmap* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.tcp_bbr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bbr_sendmap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.bbr_sendmap* %2, %struct.bbr_sendmap** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %13 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %12, i32 0, i32 2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %86

19:                                               ; preds = %5
  %20 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %21 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %20, %struct.TYPE_7__* %21, i8* %22)
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 8
  store i8* %24, i8** %26, align 8
  %27 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %28 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %33 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %38 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %43 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %48 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %53 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %8, align 8
  %60 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = bitcast %union.tcp_log_stackspecific* %11 to %struct.TYPE_7__*
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %68 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %67, i32 0, i32 2
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %77 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* @BBR_RSM_CLEARED, align 4
  %83 = load %struct.tcp_bbr*, %struct.tcp_bbr** %6, align 8
  %84 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %83, i32 0, i32 0
  %85 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_8__* %69, i32* null, i32* %75, i32* %81, i32 %82, i32 0, i32 0, %union.tcp_log_stackspecific* %11, i32 0, i32* %84)
  br label %86

86:                                               ; preds = %19, %5
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
