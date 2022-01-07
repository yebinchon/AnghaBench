; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_bbrupd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_bbrupd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_BBRUPD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*)* @bbr_log_type_bbrupd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_type_bbrupd(%struct.tcp_bbr* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32 %8, i8* %9, i8* %10) #0 {
  %12 = alloca %struct.tcp_bbr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i8* %10, i8** %22, align 8
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %12, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %98

31:                                               ; preds = %11
  %32 = load %struct.tcp_bbr*, %struct.tcp_bbr** %12, align 8
  %33 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %32, %struct.TYPE_9__* %33, i8* %34)
  %36 = load i8*, i8** %22, align 8
  %37 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 9
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 8
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 7
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %21, align 8
  %46 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 6
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %20, align 4
  %55 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %12, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %31
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %12, align 8
  %69 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  br label %77

74:                                               ; preds = %31
  %75 = bitcast %union.tcp_log_stackspecific* %23 to %struct.TYPE_9__*
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %74, %67
  %78 = load %struct.tcp_bbr*, %struct.tcp_bbr** %12, align 8
  %79 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %78, i32 0, i32 2
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load %struct.tcp_bbr*, %struct.tcp_bbr** %12, align 8
  %82 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.tcp_bbr*, %struct.tcp_bbr** %12, align 8
  %88 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* @BBR_LOG_BBRUPD, align 4
  %94 = load i8*, i8** %16, align 8
  %95 = load %struct.tcp_bbr*, %struct.tcp_bbr** %12, align 8
  %96 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %95, i32 0, i32 0
  %97 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %80, i32* null, i32* %86, i32* %92, i32 %93, i32 0, i8* %94, %union.tcp_log_stackspecific* %23, i32 0, i32* %96)
  br label %98

98:                                               ; preds = %77, %11
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
