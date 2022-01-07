; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_type_log_hdwr_pacing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_type_log_hdwr_pacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.ifnet = type { i32 }
%union.tcp_log_stackspecific = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TCP_LOG_STATE_OFF = common dso_local global i64 0, align 8
@BBR_LOG_HDWR_PACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, %struct.ifnet*, i32, i32, i32, i32, i32)* @bbr_type_log_hdwr_pacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_type_log_hdwr_pacing(%struct.tcp_bbr* %0, %struct.ifnet* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.tcp_bbr*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.tcp_log_stackspecific, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %8, align 8
  store %struct.ifnet* %1, %struct.ifnet** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %17 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %16, i32 0, i32 5
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_LOG_STATE_OFF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %106

23:                                               ; preds = %7
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %25 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @bbr_fill_in_logging_data(%struct.tcp_bbr* %24, %struct.TYPE_7__* %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = ashr i32 %28, 32
  %30 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %11, align 4
  %33 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %36 = ptrtoint %struct.ifnet* %35 to i32
  %37 = ashr i32 %36, 32
  %38 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %41 = ptrtoint %struct.ifnet* %40 to i32
  %42 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %54 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %63 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %74 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %81 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %80, i32 0, i32 5
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = bitcast %union.tcp_log_stackspecific* %15 to %struct.TYPE_7__*
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  %87 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %88 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %87, i32 0, i32 5
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %91 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %90, i32 0, i32 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %97 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %96, i32 0, i32 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* @BBR_LOG_HDWR_PACE, align 4
  %103 = load %struct.tcp_bbr*, %struct.tcp_bbr** %8, align 8
  %104 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %103, i32 0, i32 3
  %105 = call i32 @TCP_LOG_EVENTP(%struct.TYPE_8__* %89, i32* null, i32* %95, i32* %101, i32 %102, i32 0, i32 0, %union.tcp_log_stackspecific* %15, i32 0, i32* %104)
  br label %106

106:                                              ; preds = %23, %7
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
