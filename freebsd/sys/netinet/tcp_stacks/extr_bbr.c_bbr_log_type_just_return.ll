; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_just_return.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_just_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, %struct.TYPE_8__*, %struct.TYPE_10__*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32, i8*, i32, i32, i32, i32, i32, i8* }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_JUSTRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i8*, i8*, i32, i32, i8*, i32)* @bbr_log_type_just_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_type_just_return(%struct.tcp_bbr* %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.tcp_bbr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 2
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %90

23:                                               ; preds = %7
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %25 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %24, %struct.TYPE_9__* %25, i8* %26)
  %28 = load i8*, i8** %13, align 8
  %29 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 9
  store i8* %28, i8** %30, align 8
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %32 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 8
  %37 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %38 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %12, align 4
  %44 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %61 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %14, align 4
  %68 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %71 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %70, i32 0, i32 2
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %74 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %73, i32 0, i32 1
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %80 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* @BBR_LOG_JUSTRET, align 4
  %86 = load i8*, i8** %10, align 8
  %87 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %88 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %87, i32 0, i32 0
  %89 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %72, i32* null, i32* %78, i32* %84, i32 %85, i32 0, i8* %86, %union.tcp_log_stackspecific* %15, i32 0, i32* %88)
  br label %90

90:                                               ; preds = %23, %7
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
