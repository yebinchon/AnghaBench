; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_ltbw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_log_type_ltbw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_10__*, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32, i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_BWSAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i8*, i32, i8*, i8*, i8*, i8*)* @bbr_log_type_ltbw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_log_type_ltbw(%struct.tcp_bbr* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.tcp_bbr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %union.tcp_log_stackspecific, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %114

23:                                               ; preds = %7
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %25 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %24, %struct.TYPE_9__* %25, i8* %26)
  %28 = load i32, i32* %10, align 4
  %29 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %41 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %61 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %67 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %23
  %71 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %72 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %76 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %74, %78
  %80 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %94

82:                                               ; preds = %23
  %83 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %84 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %88 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %86, %90
  %92 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_9__*
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %82, %70
  %95 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %96 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %95, i32 0, i32 3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %99 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %105 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %104, i32 0, i32 2
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* @BBR_LOG_BWSAMP, align 4
  %111 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %112 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %111, i32 0, i32 1
  %113 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_10__* %97, i32* null, i32* %103, i32* %109, i32 %110, i32 0, i32 0, %union.tcp_log_stackspecific* %15, i32 0, i32* %112)
  br label %114

114:                                              ; preds = %94, %7
  ret void
}

declare dso_local i32 @bbr_fill_in_logging_data(%struct.tcp_bbr*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @TCP_LOG_EVENTP(%struct.TYPE_10__*, i32*, i32*, i32*, i32, i32, i32, %union.tcp_log_stackspecific*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
