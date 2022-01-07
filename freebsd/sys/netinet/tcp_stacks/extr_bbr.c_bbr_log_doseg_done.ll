; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_doseg_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_doseg_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_DOSEG_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i8*, i8*)* @bbr_log_doseg_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_doseg_done(%struct.tcp_bbr* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %11 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %10, i32 0, i32 2
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %4
  %18 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %19 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %18, %struct.TYPE_9__* %19, i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 8
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 7
  store i8* %25, i8** %27, align 8
  %28 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %29 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %41 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %58 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %63 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = bitcast %union.tcp_log_stackspecific* %9 to %struct.TYPE_9__*
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %69 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %72 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %71, i32 0, i32 1
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %78 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* @BBR_LOG_DOSEG_DONE, align 4
  %84 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %85 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %84, i32 0, i32 0
  %86 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %70, i32* null, i32* %76, i32* %82, i32 %83, i32 0, i32 0, %union.tcp_log_stackspecific* %9, i32 1, i32* %85)
  br label %87

87:                                               ; preds = %17, %4
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
