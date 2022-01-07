; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_bbrsnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_bbrsnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_BBRSND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i8*, i8*, i8*, i8*, i8*, i8*)* @bbr_log_type_bbrsnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_type_bbrsnd(%struct.tcp_bbr* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.tcp_bbr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %7
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %25 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %24, %struct.TYPE_9__* %25, i8* %26)
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %41 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 65535, %55
  %57 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %60 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %65 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %64, i32 0, i32 2
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %68 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %74 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* @BBR_LOG_BBRSND, align 4
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %82 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %81, i32 0, i32 0
  %83 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %66, i32* null, i32* %72, i32* %78, i32 %79, i32 0, i8* %80, %union.tcp_log_stackspecific* %15, i32 0, i32* %82)
  br label %84

84:                                               ; preds = %23, %7
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32, i8*, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
